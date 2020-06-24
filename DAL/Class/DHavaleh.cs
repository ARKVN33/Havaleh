using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DHavaleh
    {
        private readonly dbHavalehEntities _dbHavalehEntities;
        #region Constructor

        public DHavaleh()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public int DId { get; set; }
        public short? DFactoryId { get; set; }
        public short? DCountyId { get; set; }
        public short? DBuyerId { get; set; }
        public int? DDriverId { get; set; }
        public short? DVehicleTypeId { get; set; }
        public string DDate { get; set; }
        public string DNumber { get; set; }
        public string DHavlehNumber { get; set; }
        public string DHavlehDate { get; set; }
        public string DHavalehEndDate { get; set; }


        #endregion

        #region Methods

        public Task<int> Add()
        {
            var addHavaleh = new tblHavaleh
            {
                Factory_Id = DFactoryId,
                County_Id = DCountyId,
                Buyer_Id = DBuyerId,
                Driver_Id = DDriverId,
                VehicleType_Id = DVehicleTypeId,
                Date = DDate,
                Number = DNumber,
                HavlehNumber = DHavlehNumber,
                HavlehDate = DHavlehDate,
                HavalehEndDate = DHavalehEndDate
            };
            _dbHavalehEntities.tblHavaleh.Add(addHavaleh);
            _dbHavalehEntities.SaveChanges();
            var id = Task.Run(() => addHavaleh.Id);
            return id;
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblHavaleh.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.Factory_Id = DFactoryId;
            result.County_Id = DCountyId;
            result.Buyer_Id = DBuyerId;
            result.Driver_Id = DDriverId;
            result.VehicleType_Id = DVehicleTypeId;
            result.Date = DDate;
            result.Number = DNumber;
            result.HavlehNumber = DHavlehNumber;
            result.HavlehDate = DHavlehDate;
            result.HavalehEndDate = DHavalehEndDate;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblHavaleh.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            _dbHavalehEntities.tblHavaleh.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<spSelectViewHavaleh_Result>> GetHavaleh()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.spSelectViewHavaleh().ToList());
        }

        public static Task<List<tblProvince>> GetProvince()
        {
            var dbVisitorEntities = new dbHavalehEntities();
            return Task.Run(() => dbVisitorEntities.tblProvince.ToList());
        }

        public static Task<List<tblCounty>> GetCounty()
        {
            var dbVisitorEntities = new dbHavalehEntities();
            return Task.Run(() => dbVisitorEntities.tblCounty.ToList());
        }

        #endregion
    }
}
