using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using DAL;
using DAL.Class;
using Havaleh.Class;

namespace Havaleh.Windows
{
    /// <summary>
    /// Interaction logic for WinProduct.xaml
    /// </summary>
    public partial class WinProduct
    {
        private List<tblProduct> _productData;
        private List<tblProduct> _productSearchData;

        private bool _add = true;
        public int Counter;
        public WinProduct()
        {
            InitializeComponent();
            _productData = new List<tblProduct>();
            _productSearchData = new List<tblProduct>();
        }



        private async void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                _productData = await DProduct.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
                return;
            }
            _productSearchData = _productData;
            if (string.IsNullOrEmpty(TxtSearch.Text.Trim()) || _add)
            {
                DgdData.ItemsSource = _productSearchData;
                TxtSearch.Text = string.Empty;
            }
            else
            {
                TxtSearch_TextChanged(null, null);
            }
            DgdData.ItemsSource = _productSearchData;

            BtnNew_Click(null, null);
        }

        private async void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckEmpty()) return;

            #region AddDoctor

            try
            {
                var addProduct = new DProduct
                {
                    DProductName = TxtName.Text.Trim() == string.Empty ? null : TxtName.Text
                };
                await Task.Run(() => addProduct.Add());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در ثبت اطلاعات\n" + exception.Message);
            }
            Window_Loaded(null, null);
            Utility.Message("پیام", "اطلاعات با موفقیت ثبت گردید", "Correct.png");

            #endregion
        }

        private void BtnNew_Click(object sender, RoutedEventArgs e)
        {
            TxtSearch.Focus();

            TxtName.Text = string.Empty;
            BtnAdd.IsEnabled = true;
            DgdData.SelectedIndex = -1;
            Counter = 1;
            _add = true;
        }

        private async void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            var search = TxtSearch.Text;
            _productSearchData = _productData;
            _productSearchData =
                await Task.Run(() => _productSearchData.FindAll(
                    t => !string.IsNullOrEmpty(t.ProductName) && t.ProductName.Contains(search)));

            DgdData.ItemsSource = _productSearchData;
        }

        private void DgdDoctor_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DgdData.SelectedIndex == -1) return;

            BtnAdd.IsEnabled = false;
            var selectItem = _productSearchData[DgdData.SelectedIndex];
            TxtName.Text = selectItem.ProductName;
        }

        private async void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckSelectEdit() || !CheckEmpty()) return;
            var selectItem = _productSearchData[DgdData.SelectedIndex];
            try
            {
                var editProduct = new DProduct
                {
                    DId = selectItem.Id,
                    DProductName = TxtName.Text.Trim() == string.Empty ? null : TxtName.Text
                };
                await Task.Run(() => editProduct.Edit());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در ویرایش اطلاعات\n" + exception.Message);
                return;
            }
            Window_Loaded(null, null);
            Utility.Message("پیام", "اطلاعات با موفقیت ویرایش گردید", "Correct.png");
        }

        private async void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckSelectDelete()) return;
            var selectItem = _productSearchData[DgdData.SelectedIndex];
            Utility.MyMessageBox("هشدار", "آیا از حذف اطمینان دارید؟ ", "Warning.png", false);
            if (!Utility.YesNo) return;
            try
            {
                var deleteProduct = new DProduct
                {
                    DId = selectItem.Id
                };
                await Task.Run(() => deleteProduct.Delete());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در حذف اطلاعات\n" + exception.Message);
                return;
            }
            Window_Loaded(null, null);
            Utility.Message("پیام", "اطلاعات با موفقیت حذف گردید", "Correct.png");
        }

        #region Method

        private bool CheckSelectDelete()
        {
            if (DgdData.SelectedIndex == -1)
            {
                Utility.Message("اخطار", "موردی را برای حذف انتخاب کنید", "Warning.png");
                return false;
            }
            return true;
        }

        private bool CheckSelectEdit()
        {
            if (DgdData.SelectedIndex == -1)
            {
                Utility.Message("اخطار", "موردی را برای ویرایش انتخاب کنید", "Warning.png");
                return false;
            }
            return true;
        }

        private bool CheckEmpty()
        {
            if (TxtName.Text.Trim() == string.Empty)
            {
                Utility.Message("خطا", "لطفا نام خریدار را وارد کنید", "Stop.png");
                return false;
            }

            return true;
        }


        #endregion

        #region FixedEvent

        private void DragMove(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void Close(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Minimize(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }


        #endregion
    }
}

