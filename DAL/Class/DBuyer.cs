using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DBuyer
    {
        private readonly dbHavalehEntities _dbHavalehEntities;
        #region Constructor

        public DBuyer()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public short DId { get; set; }
        public string DBuyerName { get; set; }

        #endregion

        #region Methods
        public void Add()
        {
            var addBuyer = new tblBuyer
            {
                BuyerName = DBuyerName
            };
            _dbHavalehEntities.tblBuyer.Add(addBuyer);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblBuyer.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.BuyerName = DBuyerName;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblBuyer.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            _dbHavalehEntities.tblBuyer.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<tblBuyer>> GetData()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblBuyer.ToList());
        }
        #endregion
    }
}
