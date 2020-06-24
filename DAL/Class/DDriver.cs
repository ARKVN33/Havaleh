using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DDriver
    {
        private readonly dbHavalehEntities _dbHavalehEntities;
        #region Constructor

        public DDriver()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public int DId { get; set; }
        public string DDriverName { get; set; }
        public string DDriverMobile { get; set; }
        public string DNumberPlates { get; set; }

        #endregion

        #region Methods
        public void Add()
        {
            var addDriver = new tblDriver
            {
                DriverName = DDriverName,
                DriverMobile = DDriverMobile,
                NumberPlates = DNumberPlates
            };
            _dbHavalehEntities.tblDriver.Add(addDriver);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblDriver.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.DriverName = DDriverName;
            result.DriverMobile = DDriverMobile;
            result.NumberPlates = DNumberPlates;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblDriver.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            _dbHavalehEntities.tblDriver.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<tblDriver>> GetData()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblDriver.ToList());
        }

        public static Task<List<tblDriver>> Search(string search)
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblDriver.Where(
                t => !string.IsNullOrEmpty(t.DriverName) && t.DriverName.Contains(search) ||
                     !string.IsNullOrEmpty(t.NumberPlates) && t.NumberPlates.Contains(search) ||
                     !string.IsNullOrEmpty(t.DriverMobile) && t.DriverMobile.Contains(search)).ToList());
        }
        #endregion
    }
}
