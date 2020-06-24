using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DLicense
    {
        private readonly dbHavalehEntities _dbHavalehEntities;

        #region Constructor

        public DLicense()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public string DAppLicense { get; set; }

        public string DAppVersion { get; set; }

        #endregion

        #region Methods

        public void Add()
        {
            var tblLicense = new tblLicense
            {
                Id = 1,
                AppLicense = DAppLicense,
                AppVersion = DAppVersion
            };
            _dbHavalehEntities.tblLicense.Add(tblLicense);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblLicense.SingleOrDefault(x => x.Id == 1);
            if (result == null) return;
            result.AppLicense = DAppLicense;
            result.AppVersion = DAppVersion;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblLicense.SingleOrDefault(x => x.Id == 1);
            if (result == null) return;
            _dbHavalehEntities.tblLicense.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<tblLicense>> GetData()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblLicense.Where(x => x.Id == 1).ToList());
        }
        #endregion
    }
}
