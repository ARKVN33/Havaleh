namespace Havaleh.Class
{
    public class CreateProduct
    {
        public byte ProductId { get; set; }
        public byte CapacityId { get; set; }
        public byte Num { get; set; }
        public string Product { get; set; }
        public string Capacity { get; set; }


        public CreateProduct(byte productId, byte capacityId, byte num, string product, string capacity)
        {
            ProductId = productId;
            CapacityId = capacityId;
            Num = num;
            Product = product;
            Capacity = capacity;
        }
    }
}
