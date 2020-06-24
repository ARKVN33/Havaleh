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
    /// Interaction logic for WinDriver.xaml
    /// </summary>
    public partial class WinDriver
    {
        private List<tblDriver> _driverData;
        private List<tblDriver> _driverSearchData;

        private bool _add = true;
        public int Counter;
        public WinDriver()
        {
            InitializeComponent();
            _driverData = new List<tblDriver>();
            _driverSearchData = new List<tblDriver>();
        }



        private async void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                _driverData = await DDriver.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
                return;
            }
            _driverSearchData = _driverData;
            if (string.IsNullOrEmpty(TxtSearch.Text.Trim()) || _add)
            {
                DgdData.ItemsSource = _driverSearchData;
                TxtSearch.Text = string.Empty;
            }
            else
            {
                TxtSearch_TextChanged(null, null);
            }
            DgdData.ItemsSource = _driverSearchData;

            BtnNew_Click(null, null);
        }

        private async void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckEmpty()) return;

            #region AddDoctor

            try
            {
                var addDriver = new DDriver
                {
                    DDriverName = TxtName.Text,
                    DDriverMobile = TxtMobile.Text,
                    DNumberPlates = TxtNumberPlates.Text + " ایران " + TxtNumberPlates1.Text
                };
                await Task.Run(() => addDriver.Add());
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
            TxtMobile.Text = string.Empty;
            TxtNumberPlates.Text = string.Empty;
            TxtNumberPlates1.Text = string.Empty;
            BtnAdd.IsEnabled = true;
            DgdData.SelectedIndex = -1;
            Counter = 1;
            _add = true;
        }

        private async void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            var search = TxtSearch.Text;
            _driverSearchData = _driverData;
            _driverSearchData =
                await Task.Run(() => _driverSearchData.FindAll(
                    t => !string.IsNullOrEmpty(t.DriverName) && t.DriverName.Contains(search) ||
                         !string.IsNullOrEmpty(t.NumberPlates) && t.NumberPlates.Contains(search) ||
                         !string.IsNullOrEmpty(t.DriverMobile) && t.DriverMobile.Contains(search)));

            DgdData.ItemsSource = _driverSearchData;
        }

        private void DgdDoctor_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DgdData.SelectedIndex == -1) return;

            BtnAdd.IsEnabled = false;
            var selectItem = _driverSearchData[DgdData.SelectedIndex];
            TxtName.Text = selectItem.DriverName;
            TxtMobile.Text = selectItem.DriverMobile;
            TxtNumberPlates.Text = selectItem.NumberPlates.Substring(0,6);
            TxtNumberPlates1.Text = selectItem.NumberPlates.Substring(13,2);
        }

        private async void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckSelectEdit() || !CheckEmpty()) return;
            var selectItem = _driverSearchData[DgdData.SelectedIndex];
            try
            {
                var editDriver = new DDriver
                {
                    DId = selectItem.Id,
                    DDriverName = TxtName.Text,
                    DDriverMobile = TxtMobile.Text,
                    DNumberPlates = TxtNumberPlates.Text + " ایران " + TxtNumberPlates1.Text
                };
                await Task.Run(() => editDriver.Edit());
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
            var selectItem = _driverSearchData[DgdData.SelectedIndex];
            Utility.MyMessageBox("هشدار", "آیا از حذف اطمینان دارید؟ ", "Warning.png", false);
            if (!Utility.YesNo) return;
            try
            {
                var deleteDriver = new DDriver
                {
                    DId = selectItem.Id
                };
                await Task.Run(() => deleteDriver.Delete());
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
                Utility.Message("خطا", "لطفا نام و نام‌خانوادگی راننده را وارد کنید", "Stop.png");
                return false;
            }

            if (TxtMobile.Text.Trim() == string.Empty)
            {
                Utility.Message("خطا", "لطفا شماره موبایل راننده را وارد کنید", "Stop.png");
                return false;
            }

            if ((TxtNumberPlates.Text.Length < 6 && TxtNumberPlates.Text.Trim() != string.Empty))
            {
                Utility.Message("خطا", "قسمت اول شماره شهربانی باید شامل 6 کاراکتر باشد", "Stop.png");
                return false;
            }

            if (TxtNumberPlates1.Text.Length < 2 && TxtNumberPlates1.Text.Trim() != string.Empty)
            {
                Utility.Message("خطا", "قسمت دوم شماره شهربانی باید شامل 2 کاراکتر باشد", "Stop.png");
                return false;
            }
            if (TxtNumberPlates.Text.Trim() == string.Empty && TxtNumberPlates1.Text.Trim() != string.Empty)
            {
                Utility.Message("خطا", "شماره شهربانی را درست وارد کنید", "Stop.png");
                return false;
            }
            if (TxtNumberPlates1.Text.Trim() == string.Empty && TxtNumberPlates.Text.Trim() != string.Empty)
            {
                Utility.Message("خطا", "شماره شهربانی را درست وارد کنید", "Stop.png");
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