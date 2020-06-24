using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DFactory
    {
        private readonly dbHavalehEntities _dbHavalehEntities;
        #region Constructor

        public DFactory()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public short DId { get; set; }
        public string DFactoryName { get; set; }

        #endregion

        #region Methods
        public void Add()
        {
            var addFactory = new tblFactory
            {
                FactoryName = DFactoryName
            };
            _dbHavalehEntities.tblFactory.Add(addFactory);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblFactory.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.FactoryName = DFactoryName;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblFactory.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            _dbHavalehEntities.tblFactory.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<tblFactory>> GetData()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblFactory.ToList());
        }
        #endregion

    }
}
