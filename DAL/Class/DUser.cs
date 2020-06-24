using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DAL.Class
{
    public class DUser
    {
        private readonly dbHavalehEntities _dbHavalehEntities;

        #region Constructor

        public DUser()
        {
            _dbHavalehEntities = new dbHavalehEntities();
        }

        #endregion

        #region Properties

        public int DId { get; set; }

        public byte DPostTypeId { get; set; }

        public byte DSecurityQuestionId { get; set; }

        public string DFirstName { get; set; }

        public string DLastName { get; set; }

        public string DUserName { get; set; }

        public string DPassword { get; set; }

        public string DMobile { get; set; }

        public string DEmail { get; set; }

        public string DAnswer { get; set; }

        public string DRegistrationDate { get; set; }

        public string DImage { get; set; }

        public string DDescription { get; set; }


        #endregion

        #region Methods

        public void AddAdmin()
        {
            var tblUser = new tblUser
            {
                User_PostType_Id = DPostTypeId,
                User_SecurityQuestion_Id = DSecurityQuestionId,
                UserFirstName = DFirstName,
                UserLastName = DLastName,
                UserName = DUserName,
                UserPassword = BCrypt.Net.BCrypt.HashPassword(DPassword),
                UserMobileNumber = DMobile,
                UserEmail = DEmail,
                UserAnswer = BCrypt.Net.BCrypt.HashPassword(DAnswer),
                UserRegistrationDate = DRegistrationDate,
                UserImage = DImage,
                UserDescription = DDescription
            };
            _dbHavalehEntities.tblUser.Add(tblUser);
            _dbHavalehEntities.SaveChanges();
            var tblSundry = new tblSundry
            {
                Id = 1,
                RegisteredAdminPassword = true
            };
            _dbHavalehEntities.tblSundry.Add(tblSundry);
            _dbHavalehEntities.SaveChanges();
        }

        public static Task<List<string>> GetQuestion()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return Task.Run(() => dbHavalehEntities.tblSecurityQuestion.Select(x => x.SecurityQuestion).ToList());
        }

        public void ChangePassword()
        {
            var tblUser = new tblUser
            {
                Id = 1,
                UserPassword = BCrypt.Net.BCrypt.HashPassword(DPassword)
            };

            using (var dbHavalehEntities = new dbHavalehEntities())
            {
                dbHavalehEntities.tblUser.Attach(tblUser);
                dbHavalehEntities.Entry(tblUser).Property(x => x.UserPassword).IsModified = true;
                dbHavalehEntities.SaveChanges();
            }
        }

        private static List<tblPostType> GetPostdata()
        {
            var dbHavalehEntities = new dbHavalehEntities();
            return dbHavalehEntities.tblPostType.ToList();
        }

        #endregion
    }
}
