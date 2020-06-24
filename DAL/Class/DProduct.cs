using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DProduct
    {
        private readonly dbHavalehEntities _dbHavalehEntities;

        #region Constructor

        public DProduct()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public byte DId { get; set; }
        public string DProductName { get; set; }

        #endregion

        #region Methods

        public void Add()
        {
            var addProduct = new tblProduct
            {
                ProductName = DProductName
            };
            _dbHavalehEntities.tblProduct.Add(addProduct);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblProduct.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.ProductName = DProductName;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            var result = _dbHavalehEntities.tblProduct.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            _dbHavalehEntities.tblProduct.Remove(result);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<tblProduct>> GetData()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblProduct.ToList());
        }

        #endregion
    }
}
