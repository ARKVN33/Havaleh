﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class dbHavalehEntities : DbContext
    {
        public dbHavalehEntities()
            : base("name=dbHavalehEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tblBuyer> tblBuyer { get; set; }
        public virtual DbSet<tblCapacity> tblCapacity { get; set; }
        public virtual DbSet<tblCounty> tblCounty { get; set; }
        public virtual DbSet<tblDriver> tblDriver { get; set; }
        public virtual DbSet<tblFactory> tblFactory { get; set; }
        public virtual DbSet<tblHavaleh> tblHavaleh { get; set; }
        public virtual DbSet<tblLicense> tblLicense { get; set; }
        public virtual DbSet<tblPostType> tblPostType { get; set; }
        public virtual DbSet<tblProduct> tblProduct { get; set; }
        public virtual DbSet<tblProvince> tblProvince { get; set; }
        public virtual DbSet<tblSecurityAccess> tblSecurityAccess { get; set; }
        public virtual DbSet<tblSecurityQuestion> tblSecurityQuestion { get; set; }
        public virtual DbSet<tblSelectProduct> tblSelectProduct { get; set; }
        public virtual DbSet<tblSundry> tblSundry { get; set; }
        public virtual DbSet<tblUser> tblUser { get; set; }
        public virtual DbSet<tblVehicleType> tblVehicleType { get; set; }
        public virtual DbSet<viewHavaleh> viewHavaleh { get; set; }
        public virtual DbSet<viewSelectProduct> viewSelectProduct { get; set; }
    
        public virtual ObjectResult<spSelectViewHavaleh_Result> spSelectViewHavaleh()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spSelectViewHavaleh_Result>("spSelectViewHavaleh");
        }
    
        public virtual ObjectResult<spSelectViewSelectProduct_Result> spSelectViewSelectProduct()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spSelectViewSelectProduct_Result>("spSelectViewSelectProduct");
        }
    }
}
