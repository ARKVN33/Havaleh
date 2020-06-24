using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DVehicle
    {
        private readonly dbHavalehEntities _dbHavalehEntities;
        #region Constructor

        public DVehicle()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public short DId { get; set; }
        public string DVehicleName { get; set; }

        #endregion

        #region Methods
        public void Add()
        {
            var addVehicleType = new tblVehicleType
            {
                VehicleTypeName = DVehicleName
            };
            _dbHavalehEntities.tblVehicleType.Add(addVehicleType);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblVehicleType.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.VehicleTypeName = DVehicleName;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblVehicleType.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            _dbHavalehEntities.tblVehicleType.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<tblVehicleType>> GetData()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblVehicleType.ToList());
        }
        #endregion
    }
}
