﻿using System;
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
    /// Interaction logic for WinCapacity.xaml
    /// </summary>
    public partial class WinCapacity
    {
        private List<tblCapacity> _capacityData;
        private List<tblCapacity> _capacitySearchData;

        private bool _add = true;
        public int Counter;
        public WinCapacity()
        {
            InitializeComponent();
            _capacityData = new List<tblCapacity>();
            _capacitySearchData = new List<tblCapacity>();
        }



        private async void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                _capacityData = await DCapacity.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
                return;
            }
            _capacitySearchData = _capacityData;
            if (string.IsNullOrEmpty(TxtSearch.Text.Trim()) || _add)
            {
                DgdData.ItemsSource = _capacitySearchData;
                TxtSearch.Text = string.Empty;
            }
            else
            {
                TxtSearch_TextChanged(null, null);
            }
            DgdData.ItemsSource = _capacitySearchData;

            BtnNew_Click(null, null);
        }

        private async void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckEmpty()) return;

            #region AddDoctor

            try
            {
                var addCapacity = new DCapacity
                {
                    DCapacityName = TxtName.Text.Trim() == string.Empty ? null : TxtName.Text
                };
                await Task.Run(() => addCapacity.Add());
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
            _capacitySearchData = _capacityData;
            _capacitySearchData =
                await Task.Run(() => _capacitySearchData.FindAll(
                    t => !string.IsNullOrEmpty(t.CapacityName) && t.CapacityName.Contains(search)));

            DgdData.ItemsSource = _capacitySearchData;
        }

        private void DgdDoctor_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DgdData.SelectedIndex == -1) return;

            BtnAdd.IsEnabled = false;
            var selectItem = _capacitySearchData[DgdData.SelectedIndex];
            TxtName.Text = selectItem.CapacityName;
        }

        private async void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckSelectEdit() || !CheckEmpty()) return;
            var selectItem = _capacitySearchData[DgdData.SelectedIndex];
            try
            {
                var editCapacity = new DCapacity
                {
                    DId = selectItem.Id,
                    DCapacityName = TxtName.Text.Trim() == string.Empty ? null : TxtName.Text
                };
                await Task.Run(() => editCapacity.Edit());
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
            var selectItem = _capacitySearchData[DgdData.SelectedIndex];
            Utility.MyMessageBox("هشدار", "آیا از حذف اطمینان دارید؟ ", "Warning.png", false);
            if (!Utility.YesNo) return;
            try
            {
                var deleteCapacity = new DCapacity
                {
                    DId = selectItem.Id
                };
                await Task.Run(() => deleteCapacity.Delete());
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
