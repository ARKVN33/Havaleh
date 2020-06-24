using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DCapacity
    {
        private readonly dbHavalehEntities _dbHavalehEntities;

        #region Constructor

        public DCapacity()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public byte DId { get; set; }
        public string DCapacityName { get; set; }

        #endregion

        #region Methods

        public void Add()
        {
            var addCapacity = new tblCapacity
            {
                CapacityName = DCapacityName
            };
            _dbHavalehEntities.tblCapacity.Add(addCapacity);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblCapacity.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.CapacityName = DCapacityName;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblCapacity.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            _dbHavalehEntities.tblCapacity.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<tblCapacity>> GetData()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblCapacity.ToList());
        }

        #endregion
    }
}
