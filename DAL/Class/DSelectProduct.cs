using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DSelectProduct
    {
        private readonly dbHavalehEntities _dbHavalehEntities;
        #region Constructor

        public DSelectProduct()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties
        public int DId { get; set; }
        public int? DHavalehId { get; set; }
        public byte? DCapacityId { get; set; }
        public byte? DCapacityNumber { get; set; }
        public byte? DProductId { get; set; }

        #endregion

        #region Methods
        public void Add()
        {
            var addtblSelectProduct = new tblSelectProduct
            {
                Havaleh_Id = DHavalehId,
                Capacity_Id = DCapacityId,
                CapacityNumber = DCapacityNumber,
                Product_Id = DProductId
            };
            _dbHavalehEntities.tblSelectProduct.Add(addtblSelectProduct);
            _dbHavalehEntities.SaveChanges();
        }

        public void Edit()
        {
            var result = _dbHavalehEntities.tblSelectProduct.SingleOrDefault(x => x.Id == DId);
            if (result == null) return;
            result.Havaleh_Id = DHavalehId;
            result.Capacity_Id = DCapacityId;
            result.CapacityNumber = DCapacityNumber;
            result.Product_Id = DProductId;
            _dbHavalehEntities.SaveChanges();
        }

        public void Delete()
        {
            _dbHavalehEntities.tblSelectProduct.RemoveRange(_dbHavalehEntities.tblSelectProduct.Where(x => x.Havaleh_Id == DHavalehId));
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<spSelectViewSelectProduct_Result>> GetData(int havalehId)
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.spSelectViewSelectProduct().Where(x => x.Havaleh_Id == havalehId).ToList());
        }

        #endregion
    }
}
