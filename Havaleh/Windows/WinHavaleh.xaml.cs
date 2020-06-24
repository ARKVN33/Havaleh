using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using Arash;
using DAL;
using DAL.Class;
using Havaleh.Class;
using Stimulsoft.Report;
using Stimulsoft.Report.Dictionary;

namespace Havaleh.Windows
{
    /// <summary>
    /// Interaction logic for WinDoctor.xaml
    /// </summary>
    public partial class WinHavaleh
    {
        private List<spSelectViewHavaleh_Result> _havalehData;
        private List<spSelectViewHavaleh_Result> _havalehSearchData;

        private List<tblCounty> _countyData;
        private List<tblFactory> _factoryData;
        private List<tblBuyer> _buyerData;
        private List<tblDriver> _driverData;
        private List<CreateProduct> _createProduct;

        private List<byte> _s1;
        private List<byte> _s2;
        private List<byte> _s3;

        private List<string> _s4;
        private List<string> _s5;


        private string _factoryText;
        private string _buyerText;
        private string _driverText;

        private bool _add = true;
        public int Counter;

        public WinHavaleh()
        {
            InitializeComponent();
            _havalehData = new List<spSelectViewHavaleh_Result>();
            _havalehSearchData = new List<spSelectViewHavaleh_Result>();
            _createProduct = new List<CreateProduct>();

            _countyData = new List<tblCounty>();
            _factoryData = new List<tblFactory>();
            _buyerData = new List<tblBuyer>();
            _driverData = new List<tblDriver>();

            _factoryText = string.Empty;
            _buyerText = string.Empty;
            _driverText = string.Empty;

            _s1 = new List<byte>();
            _s2 = new List<byte>();
            _s3 = new List<byte>();
            
            _s4 = new List<string>();
            _s5 = new List<string>();

        }

        #region Event

        private async void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                _havalehData = await DHavaleh.GetHavaleh();
                _countyData = await DHavaleh.GetCounty();
                _factoryData= await DFactory.GetData();
                _buyerData = await DBuyer.GetData();
                _driverData = await DDriver.GetData();
                CboProvince.ItemsSource = await DHavaleh.GetProvince();
                CboVehicle.ItemsSource = await DVehicle.GetData();
                CboProduct.ItemsSource = await DProduct.GetData();
                CboCapacity.ItemsSource = await DCapacity.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
                return;
            }
            _havalehSearchData = _havalehData;
            if (string.IsNullOrEmpty(TxtSearch.Text.Trim()) || _add)
            {
                DgdHavaleh.ItemsSource = _havalehSearchData;
                TxtSearch.Text = string.Empty;
            }
            else
            {
                TxtSearch_TextChanged(null, null);
            }
            CboFactory.ItemsSource = _factoryData;
            CboBuyer.ItemsSource = _buyerData;
            CboDriver.ItemsSource = _driverData;
            CboCounty.ItemsSource = _countyData;
            DgdHavaleh.ItemsSource = _havalehSearchData;

            BtnNew_Click(null, null);
        }

        private async void BtnAdd_Click(object sender, RoutedEventArgs e)

        {
            if (!CheckEmpty()) return;
            var havalehId = 0;
            #region AddHavaleh

            try
            {
                var addHavaleh = new DHavaleh
                {
                    DFactoryId = ((tblFactory)CboFactory.SelectedItem).Id,
                    DCountyId = ((tblCounty)CboCounty.SelectedItem).Id,
                    DBuyerId = ((tblBuyer)CboBuyer.SelectedItem).Id,
                    DDriverId = ((tblDriver)CboDriver.SelectedItem).Id,
                    DVehicleTypeId = ((tblVehicleType)CboVehicle.SelectedItem).Id,
                    DDate = TxtDate.Text.Trim() == string.Empty ? null : Utility.CurrectDate(TxtDate.Text),
                    DNumber = TxtNumber.Text.Trim() == string.Empty ? null : TxtNumber.Text,
                    DHavlehNumber = TxtHavlehNumber.Text.Trim() == string.Empty ? null : TxtHavlehNumber.Text,
                    DHavlehDate = TxtHavlehDate.Text.Trim() == string.Empty ? null : Utility.CurrectDate(TxtHavlehDate.Text),
                    DHavalehEndDate = TxtHavalehEndDate.Text.Trim() == string.Empty ? null : Utility.CurrectDate(TxtHavalehEndDate.Text)
                };
                havalehId = Convert.ToInt32(await addHavaleh.Add());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در ثبت اطلاعات\n" + exception.Message);
            }

            foreach (var t in _createProduct)
            {
                try
                {
                    var addSelectProduct = new DSelectProduct
                    {
                        DHavalehId = havalehId,
                        DProductId = t.ProductId,
                        DCapacityId = t.CapacityId,
                        DCapacityNumber = t.Num
                    };
                    await Task.Run(() => addSelectProduct.Add());
                }
                catch (Exception exception)
                {
                    Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در ثبت اطلاعات\n" + exception.Message);
                }
            }


            Window_Loaded(null, null);
            Utility.Message("پیام", "اطلاعات با موفقیت ثبت گردید", "Correct.png");

            #endregion
        }

        private async void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckSelectEdit() || !CheckEmpty()) return;
            var selectItem = _havalehSearchData[DgdHavaleh.SelectedIndex];
            try
            {
                var editHavaleh = new DHavaleh
                {
                    DId = selectItem.Id,
                    DFactoryId = ((tblFactory)CboFactory.SelectedItem).Id,
                    DCountyId = ((tblCounty)CboCounty.SelectedItem).Id,
                    DBuyerId = ((tblBuyer)CboBuyer.SelectedItem).Id,
                    DDriverId = ((tblDriver)CboDriver.SelectedItem).Id,
                    DVehicleTypeId = ((tblVehicleType)CboVehicle.SelectedItem).Id,
                    DDate = TxtDate.Text.Trim() == string.Empty ? null : Utility.CurrectDate(TxtDate.Text),
                    DNumber = TxtNumber.Text.Trim() == string.Empty ? null : TxtNumber.Text,
                    DHavlehNumber = TxtHavlehNumber.Text.Trim() == string.Empty ? null : TxtHavlehNumber.Text,
                    DHavlehDate = TxtHavlehDate.Text.Trim() == string.Empty ? null : Utility.CurrectDate(TxtHavlehDate.Text),
                    DHavalehEndDate = TxtHavalehEndDate.Text.Trim() == string.Empty ? null : Utility.CurrectDate(TxtHavalehEndDate.Text)
                };
                await Task.Run(() => editHavaleh.Edit());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در ویرایش اطلاعات پزشک\n" + exception.Message);
                return;
            }

            try
            {
                var deleteSelectProduct = new DSelectProduct
                {
                    DHavalehId = selectItem.Id
                };
                await Task.Run(() => deleteSelectProduct.Delete());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در حذف اطلاعات\n" + exception.Message);
                return;
            }

            foreach (var t in _createProduct)
            {
                try
                {
                    var addSelectProduct = new DSelectProduct
                    {
                        DHavalehId = selectItem.Id,
                        DProductId = t.ProductId,
                        DCapacityId = t.CapacityId,
                        DCapacityNumber = t.Num
                    };
                    await Task.Run(() => addSelectProduct.Add());
                }
                catch (Exception exception)
                {
                    Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در ثبت اطلاعات\n" + exception.Message);
                }
            }

            Window_Loaded(null, null);
            Utility.Message("پیام", "اطلاعات با موفقیت ویرایش گردید", "Correct.png");
        }

        private async void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (!CheckSelectDelete()) return;
            var selectItem = _havalehSearchData[DgdHavaleh.SelectedIndex];
            Utility.MyMessageBox("هشدار", "آیا از حذف اطمینان دارید؟ ", "Warning.png", false);
            if (!Utility.YesNo) return;
            try
            {
                var deleteHavaleh = new DHavaleh
                {
                    DId = selectItem.Id
                };
                await Task.Run(() => deleteHavaleh.Delete());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در حذف اطلاعات\n" + exception.Message);
                return;
            }

            try
            {
                var deleteSelectProduct = new DSelectProduct
                {
                    DHavalehId = selectItem.Id
                };
                await Task.Run(() => deleteSelectProduct.Delete());
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در حذف اطلاعات\n" + exception.Message);
                return;
            }

            Window_Loaded(null, null);
            Utility.Message("پیام", "اطلاعات با موفقیت حذف گردید", "Correct.png");
        }

        private void BtnNew_Click(object sender, RoutedEventArgs e)
        {
            TxtSearch.Focus();
            TxtDate.Text = PersianDate.Today.ToString();
            TxtHavlehNumber.Text = string.Empty;
            TxtHavlehDate.Text = PersianDate.Today.ToString();
            TxtHavalehEndDate.Text = PersianDate.Today.ToString();
            TxtNum.Text = "1";

            LblMobile.Content = null;
            LblPelak.Content = null;

            BtnAutoId_Click(null, null);
            BtnAdd.IsEnabled = true;

            CboFactory.SelectedIndex = -1;
            CboBuyer.SelectedIndex = -1;
            CboDriver.SelectedIndex = -1;
            CboVehicle.SelectedIndex = 0;
            CboCapacity.SelectedIndex = 0;
            CboProduct.SelectedIndex = 0;
            CboCounty.SelectedIndex = 0;
            CboProvince.SelectedIndex = 0;

            DgdHavaleh.SelectedIndex = -1;
            DgdProduct.SelectedIndex = -1;
            DgdProduct.ItemsSource = null;
            _createProduct = null;
            _s1 = null;
            _s2 = null;
            _s3 = null;
            _s4 = null;
            _s5 = null;
            _createProduct = new List<CreateProduct>();
            _s1 = new List<byte>();
            _s2 = new List<byte>();
            _s3 = new List<byte>();
            _s4 = new List<string>();
            _s5 = new List<string>();

            Counter = 1;
            _add = true;
        }

        private void BtnAutoId_Click(object sender, RoutedEventArgs e)
        {
            if (_havalehData != null)
                try
                {
                    TxtNumber.Text = (long.Parse(_havalehData.OrderByDescending(p => p.Id).FirstOrDefault()?.Number) + 1)
                        .ToString();
                }
                catch (Exception)
                {
                    TxtNumber.Text = "1";
                }

        }

        private async void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            var search = TxtSearch.Text;
            _havalehSearchData = _havalehData;
            _havalehSearchData =
                await Task.Run(() => _havalehSearchData.FindAll(
                    t =>
                        !string.IsNullOrEmpty(t.Number) && t.Number.Contains(search) ||
                        !string.IsNullOrEmpty(t.FactoryName) && t.FactoryName.Contains(search) ||
                        !string.IsNullOrEmpty(t.Date) && t.Date.Contains(search) ||
                        !string.IsNullOrEmpty(t.HavlehNumber) && t.HavlehNumber.Contains(search) ||
                        !string.IsNullOrEmpty(t.HavlehDate) && t.HavlehDate.Contains(search) ||
                        !string.IsNullOrEmpty(t.BuyerName) && t.BuyerName.Contains(search) ||
                        !string.IsNullOrEmpty(t.VehicleTypeName) && t.VehicleTypeName.Contains(search) ||
                        !string.IsNullOrEmpty(t.DriverName) && t.DriverName.Contains(search) ||
                        !string.IsNullOrEmpty(t.NumberPlates) && t.NumberPlates.Contains(search) ||
                        !string.IsNullOrEmpty(t.DriverMobile) && t.DriverMobile.Contains(search) ||
                        !string.IsNullOrEmpty(t.CountyName) && t.CountyName.Contains(search) ||
                        !string.IsNullOrEmpty(t.ProvinceName) && t.ProvinceName.Contains(search) ||
                        !string.IsNullOrEmpty(t.HavalehEndDate) && t.HavalehEndDate.Contains(search)));

            DgdHavaleh.ItemsSource = _havalehSearchData;
        }

        private async void DgdDoctor_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DgdHavaleh.SelectedIndex == -1) return;

            BtnAdd.IsEnabled = false;

            DgdProduct.ItemsSource = null;
            _createProduct = null;
            _s1 = null;
            _s2 = null;
            _s3 = null;
            _s4 = null;
            _s5 = null;
            _createProduct = new List<CreateProduct>();
            _s1 = new List<byte>();
            _s2 = new List<byte>();
            _s3 = new List<byte>();
            _s4 = new List<string>();
            _s5 = new List<string>();

            var selectItem = _havalehSearchData[DgdHavaleh.SelectedIndex];

            CboFactory.SelectedValue = selectItem.Factory_Id;
            CboProvince.SelectedValue = selectItem.Province_Id;
            CboCounty.SelectedValue = selectItem.County_Id;
            CboBuyer.SelectedValue = selectItem.Buyer_Id;
            CboDriver.SelectedValue = selectItem.Driver_Id;
            CboVehicle.SelectedValue = selectItem.VehicleType_Id;

            TxtNumber.Text = selectItem.Number;
            TxtDate.Text = selectItem.Date;
            TxtHavlehNumber.Text = selectItem.HavlehNumber;
            TxtHavlehDate.Text = selectItem.HavlehDate;
            TxtHavalehEndDate.Text = selectItem.HavalehEndDate;

            LblMobile.Content = selectItem.DriverMobile;
            LblPelak.Content = selectItem.NumberPlates;

            var selectProductData = await Task.Run(() => DSelectProduct.GetData(selectItem.Id));


            foreach (var t in selectProductData)
            {
                if (t.Product_Id != null) _s1.Add((byte) t.Product_Id);
                if (t.Capacity_Id != null) _s2.Add((byte) t.Capacity_Id);
                if (t.CapacityNumber != null) _s3.Add((byte) t.CapacityNumber);

                _s4.Add(t.ProductName);
                _s5.Add(t.CapacityNumber + " " + t.CapacityName);
            }
            _createProduct = new List<CreateProduct>();
            for (var i = 0; i < _s1.Count; i++)
            {
                _createProduct.Add(new CreateProduct(_s1[i], _s2[i], _s3[i], _s4[i], _s5[i]));
            }
            DgdProduct.ItemsSource = _createProduct;

        }

        private void BtnReport_Click(object sender, RoutedEventArgs e)
        {
            if (DgdHavaleh.SelectedIndex == -1) return;

            var selectItem = _havalehSearchData[DgdHavaleh.SelectedIndex];

            var report = new StiReport();
            report.Load("Report//Report.mrt");

            switch (_s4.Count)
            {
                case 1:
                    report.Dictionary.Variables.Add(new StiVariable("Variable1", _s4[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable2", _s5[0]));
                break;

                case 2:
                    report.Dictionary.Variables.Add(new StiVariable("Variable1", _s4[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable2", _s5[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable3", _s4[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable4", _s5[1]));
                    break;

                case 3:
                    report.Dictionary.Variables.Add(new StiVariable("Variable1", _s4[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable2", _s5[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable3", _s4[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable4", _s5[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable5", _s4[2]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable6", _s5[2]));
                    break;

                case 4:
                    report.Dictionary.Variables.Add(new StiVariable("Variable1", _s4[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable2", _s5[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable3", _s4[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable4", _s5[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable5", _s4[2]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable6", _s5[2]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable7", _s4[3]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable8", _s5[3]));
                    break;

                case 5:
                    report.Dictionary.Variables.Add(new StiVariable("Variable1", _s4[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable2", _s5[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable3", _s4[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable4", _s5[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable5", _s4[2]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable6", _s5[2]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable7", _s4[3]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable8", _s5[3]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable9", _s4[4]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable10", _s5[4]));
                    break;

                case 6:
                    report.Dictionary.Variables.Add(new StiVariable("Variable1", _s4[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable2", _s5[0]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable3", _s4[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable4", _s5[1]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable5", _s4[2]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable6", _s5[2]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable7", _s4[3]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable8", _s5[3]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable9", _s4[4]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable10", _s5[4]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable11", _s4[5]));
                    report.Dictionary.Variables.Add(new StiVariable("Variable12", _s5[5]));
                    break;
            }
            if (CheckBox.IsChecked == true)
            {
                report.Dictionary.Variables.Add(new StiVariable("ProgramPath", AppDomain.CurrentDomain.BaseDirectory + @"Icon\Signature.png"));
            }
            report.Dictionary.Variables.Add(new StiVariable("Id", selectItem.Id));
            report.Dictionary.Variables.Add(new StiVariable("Description", TxtDescription.Text));
            report.Show();
        }

        private void CboProvince_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            CboCounty.ItemsSource = _countyData.Where(t =>
                CboProvince.SelectedItem != null && CboProvince != null && t.Province_Id == ((tblProvince)CboProvince.SelectedItem).Id);
        }

        private async void CboFactory_TextInput(object sender, TextCompositionEventArgs e)
        {
            _factoryText += e.Text;
            CboFactory.IsDropDownOpen = true;
            CboFactory.ItemsSource =
                await Task.Run(() =>
                    _factoryData.FindAll(t =>
                        !string.IsNullOrEmpty(t.FactoryName) && t.FactoryName.Contains(_factoryText)));

        }

        private async void CboFactory_PreviewKeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key != Key.Back && e.Key != Key.Delete) return;
            CboFactory.IsDropDownOpen = true;
            _factoryText = CboFactory.Text;
            CboFactory.ItemsSource = !string.IsNullOrEmpty(CboFactory.Text)
                ? await Task.Run(() => _factoryData.FindAll(t =>
                    !string.IsNullOrEmpty(t.FactoryName) && t.FactoryName.Contains(CboFactory.Text)))
                : _factoryData;
        }

        private async void CboFactory_Pasting(object sender, DataObjectPastingEventArgs e)
        {

            CboFactory.IsDropDownOpen = true;
            _factoryText = CboFactory.Text;
            CboFactory.ItemsSource =
                await Task.Run(() => _factoryData.FindAll(t => !string.IsNullOrEmpty(t.FactoryName) && t.FactoryName.Contains(CboFactory.Text)));
        }

        private async void CboBuyer_TextInput(object sender, TextCompositionEventArgs e)
        {
            _buyerText += e.Text;
            CboBuyer.IsDropDownOpen = true;
            CboBuyer.ItemsSource =
                await Task.Run(() => _buyerData.FindAll(t => !string.IsNullOrEmpty(t.BuyerName) && t.BuyerName.Contains(_buyerText)));

        }

        private async void CboBuyer_PreviewKeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key != Key.Back && e.Key != Key.Delete) return;
            CboBuyer.IsDropDownOpen = true;
            _buyerText = CboBuyer.Text;
            CboBuyer.ItemsSource = !string.IsNullOrEmpty(CboBuyer.Text)
                ? await Task.Run(() => _buyerData.FindAll(t =>
                    !string.IsNullOrEmpty(t.BuyerName) && t.BuyerName.Contains(CboBuyer.Text)))
                : _buyerData;
        }

        private async void CboBuyer_Pasting(object sender, DataObjectPastingEventArgs e)
        {

            CboBuyer.IsDropDownOpen = true;
            _buyerText = CboBuyer.Text;
            CboBuyer.ItemsSource =
                await Task.Run(() => _buyerData.FindAll(t => !string.IsNullOrEmpty(t.BuyerName) && t.BuyerName.Contains(CboBuyer.Text)));
        }

        private async void CboDriver_TextInput(object sender, TextCompositionEventArgs e)
        {
            _driverText += e.Text;
            CboDriver.IsDropDownOpen = true;
            CboDriver.ItemsSource = await Task.Run(() => _driverData.FindAll(
                t =>
                    !string.IsNullOrEmpty(t.DriverName) && t.DriverName.Contains(_driverText) ||
                    !string.IsNullOrEmpty(t.NumberPlates) && t.NumberPlates.Contains(_driverText) ||
                    !string.IsNullOrEmpty(t.DriverMobile) && t.DriverMobile.Contains(_driverText)));
        }

        private async void CboDriver_PreviewKeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key != Key.Back && e.Key != Key.Delete) return;
            CboDriver.IsDropDownOpen = true;
            _driverText = CboDriver.Text;
            CboDriver.ItemsSource = !string.IsNullOrEmpty(CboDriver.Text)
                ? CboDriver.ItemsSource = await Task.Run(() => _driverData.FindAll(
                        t =>
                            !string.IsNullOrEmpty(t.DriverName) && t.DriverName.Contains(_driverText) ||
                            !string.IsNullOrEmpty(t.NumberPlates) && t.NumberPlates.Contains(_driverText) ||
                            !string.IsNullOrEmpty(t.DriverMobile) && t.DriverMobile.Contains(_driverText)))
                : _driverData;
        }

        private async void CboDriver_Pasting(object sender, DataObjectPastingEventArgs e)
        {

            CboDriver.IsDropDownOpen = true;
            _driverText = CboDriver.Text;
            CboDriver.ItemsSource = await Task.Run(() => _driverData.FindAll(
                t =>
                    !string.IsNullOrEmpty(t.DriverName) && t.DriverName.Contains(_driverText) ||
                    !string.IsNullOrEmpty(t.NumberPlates) && t.NumberPlates.Contains(_driverText) ||
                    !string.IsNullOrEmpty(t.DriverMobile) && t.DriverMobile.Contains(_driverText)));
        }

        private void TxtNum_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (TxtNum.Text.Trim() == string.Empty)
            {
                TxtNum.Text = "1";
            }
        }

        private void BtnUp_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TxtNum.Text.Trim()) || int.Parse(TxtNum.Text) < 1)
            {
                TxtNum.Text = "1";
            }
            else if (int.Parse(TxtNum.Text) >= 100)
            {
                TxtNum.Text = "1";
            }
            else
            {
                TxtNum.Text = (int.Parse(TxtNum.Text) + 1).ToString();
            }
        }

        private void BtnDown_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TxtNum.Text.Trim()) || int.Parse(TxtNum.Text) - 1 < 1)
            {
                TxtNum.Text = "100";
            }
            else if (int.Parse(TxtNum.Text) > 100)
            {
                TxtNum.Text = "1";
            }
            else
            {
                TxtNum.Text = (int.Parse(TxtNum.Text) - 1).ToString();
            }
        }

        private void BtnAddPrCa_Click(object sender, RoutedEventArgs e)
        {
            if (_s1.Count == 6)
            {
                Utility.Message("اخطار", "حداکثر 6 محصول قابل انتخاب است", "Warning.png");
                return;
            }
            _s1.Add(((tblProduct)CboProduct.SelectedItem).Id);
            _s2.Add(((tblCapacity)CboCapacity.SelectedItem).Id);
            _s3.Add(byte.Parse(TxtNum.Text));

            _s4.Add(((tblProduct)CboProduct.SelectedItem).ProductName);
            _s5.Add(TxtNum.Text + " " + ((tblCapacity)CboCapacity.SelectedItem).CapacityName);

            _createProduct = new List<CreateProduct>();
            for (var i = 0; i < _s1.Count; i++)
            {
                _createProduct.Add(new CreateProduct(_s1[i],_s2[i], _s3[i], _s4[i], _s5[i]));
            }

            DgdProduct.ItemsSource = _createProduct;
        }

        private void BtnDeletePrCa_Click(object sender, RoutedEventArgs e)
        {
            if (DgdProduct.SelectedIndex == -1) return;
            _s1.RemoveAt(DgdProduct.SelectedIndex);
            _s2.RemoveAt(DgdProduct.SelectedIndex);
            _s3.RemoveAt(DgdProduct.SelectedIndex);
            _s4.RemoveAt(DgdProduct.SelectedIndex);
            _s5.RemoveAt(DgdProduct.SelectedIndex);
            _createProduct = new List<CreateProduct>();
            for (var i = 0; i < _s1.Count; i++)
            {
                _createProduct.Add(new CreateProduct(_s1[i], _s2[i], _s3[i], _s4[i], _s5[i]));
            }
            DgdProduct.ItemsSource = _createProduct;
        }

        private async void BtnAddFactory_Click(object sender, RoutedEventArgs e)
        {
            var winFactory = new WinFactory();
            winFactory.ShowDialog();
            try
            {
                _factoryData = await DFactory.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
            }
            CboFactory.ItemsSource = _factoryData;

        }

        private async void BtnAddBuyer_Click(object sender, RoutedEventArgs e)
        {
            var winBuyer = new WinBuyer();
            winBuyer.ShowDialog();
            try
            {
                _buyerData = await DBuyer.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
            }
            CboBuyer.ItemsSource = _buyerData;
        }

        private async void BtnAddVehicle_Click(object sender, RoutedEventArgs e)
        {
            var winVehicle = new WinVehicle();
            winVehicle.ShowDialog();
            try
            {
                CboVehicle.ItemsSource = await DVehicle.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
            }
        }

        private async void BtnAddProduct_Click(object sender, RoutedEventArgs e)
        {
            var winProduct = new WinProduct();
            winProduct.ShowDialog();
            try
            {
                CboProduct.ItemsSource = await DProduct.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
            }
        }

        private async void BtnAddCapacity_Click(object sender, RoutedEventArgs e)
        {
            var winCapacity = new WinCapacity();
            winCapacity.ShowDialog();
            try
            {
                CboCapacity.ItemsSource = await DCapacity.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
            }
        }

        private async void BtnAddDriver_Click(object sender, RoutedEventArgs e)
        {
            var winDriver = new WinDriver();
            winDriver.ShowDialog();
            try
            {
                _driverData  = await DDriver.GetData();
            }
            catch (Exception exception)
            {
                Utility.MyMessageBox("خطا در بانک اطلاعاتی", "خطا در دریافت اطلاعات\n" + exception.Message);
                Close();
            }
            LblMobile.Content = null;
            LblPelak.Content = null;
            CboDriver.ItemsSource = _driverData;
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

        private void NumberInput(object sender, TextCompositionEventArgs e)
        {
            var regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void DisablePaste(object sender, ExecutedRoutedEventArgs e)
        {
            var regex = new Regex("[^0-9]+");
            e.Handled = e.Command == ApplicationCommands.Paste && regex.IsMatch(Clipboard.GetText());
        }

        private void DateInput(object sender, TextCompositionEventArgs e)
        {
            var regex = new Regex(@"[^0-9^\/]");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void DisablePasteDate(object sender, ExecutedRoutedEventArgs e)
        {
            var regex = new Regex(@"[^0-9^\/]+");
            e.Handled = e.Command == ApplicationCommands.Paste && regex.IsMatch(Clipboard.GetText());
        }

        #endregion

        #region Method

        private bool CheckSelectDelete()
        {
            if (DgdHavaleh.SelectedIndex == -1)
            {
                Utility.Message("اخطار", "موردی را برای حذف انتخاب کنید", "Warning.png");
                return false;
            }
            return true;
        }

        private bool CheckSelectEdit()
        {
            if (DgdHavaleh.SelectedIndex == -1)
            {
                Utility.Message("اخطار", "موردی را برای ویرایش انتخاب کنید", "Warning.png");
                return false;
            }
            return true;
        }

        private bool CheckEmpty()
        {
            if (TxtNumber.Text.Trim() == string.Empty)
            {
                Utility.Message("خطا", "لطفا شماره سند را وارد کنید یا اجازه دهید بصورت خودکار تولید شود", "Stop.png");
                return false;
            }
            if (!Utility.CheckDate(TxtDate.Text))
            {
                Utility.Message("خطا", "لطفا یک تاریخ صحیح برای تاریخ سند انتخاب کنید", "Stop.png");
                return false;
            }
            if (TxtHavlehNumber.Text.Trim() == string.Empty)
            {
                Utility.Message("خطا", "لطفا شماره حواله را وارد کنید", "Stop.png");
                return false;
            }
            if (!Utility.CheckDate(TxtHavlehDate.Text))
            {
                Utility.Message("خطا", "لطفا یک تاریخ صحیح برای تاریخ حواله انتخاب کنید", "Stop.png");
                return false;
            }

            if (!Utility.CheckDate(TxtHavalehEndDate.Text))
            {
                Utility.Message("خطا", "لطفا یک تاریخ صحیح برای تاریخ اعتبار حواله انتخاب کنید", "Stop.png");
                return false;
            }
            if (CboProvince.SelectedIndex == 0 || CboProvince.SelectedIndex == -1)
            {
                Utility.Message("خطا", "لطفا استان را انتخاب کنید", "Stop.png");
                return false;
            }
            if (CboCounty.SelectedIndex == -1)
            {
                Utility.Message("خطا", "لطفا استان را انتخاب کنید", "Stop.png");
                return false;
            }

            if (CboBuyer.SelectedIndex == -1)
            {
                Utility.Message("خطا", "لطفا خریدار را انتخاب کنید", "Stop.png");
                return false;
            }
            if (CboDriver.SelectedIndex == -1)
            {
                Utility.Message("خطا", "لطفا راننده را انتخاب کنید", "Stop.png");
                return false;
            }

            if (CboVehicle.SelectedIndex == -1)
            {
                Utility.Message("خطا", "لطفا نوع خودرو را انتخاب کنید", "Stop.png");
                return false;
            }

            if (_s1.Count == 0)
            {
                Utility.Message("خطا", "لطفا حداقل یک محصول را انتخاب کنید", "Stop.png");
                return false;
            }
            return true;
        }





        #endregion

        private void CboDriver_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CboDriver.SelectedIndex == -1)
            return;
            var selectItem = _driverData.SingleOrDefault(t => t.Id == ((tblDriver)CboDriver.SelectedItem).Id);
            if (selectItem != null)
            {
                LblMobile.Content = selectItem.DriverMobile;
                LblPelak.Content = selectItem.NumberPlates;
            }
        }
    }
}
