//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    
    public partial class spSelectViewHavaleh_Result
    {
        public string FactoryName { get; set; }
        public string CountyName { get; set; }
        public short Province_Id { get; set; }
        public string ProvinceName { get; set; }
        public string BuyerName { get; set; }
        public string DriverName { get; set; }
        public string DriverMobile { get; set; }
        public string NumberPlates { get; set; }
        public string VehicleTypeName { get; set; }
        public int Id { get; set; }
        public Nullable<short> Factory_Id { get; set; }
        public Nullable<short> County_Id { get; set; }
        public Nullable<short> Buyer_Id { get; set; }
        public Nullable<int> Driver_Id { get; set; }
        public Nullable<short> VehicleType_Id { get; set; }
        public string Date { get; set; }
        public string Number { get; set; }
        public string HavlehNumber { get; set; }
        public string HavlehDate { get; set; }
        public string HavalehEndDate { get; set; }
    }
}
