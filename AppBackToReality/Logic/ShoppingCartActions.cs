using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AppBackToReality.Models;
namespace AppBackToReality.Logic
{
    public class ShoppingCartActions : IDisposable
    {
        public string ShoppingCartId { get; set; }
        private ScreenContext _db = new ScreenContext();
        public const string CartSessionKey = "CartId";
        public void AddToCart(int id)
        {
            // Retrieve the product from the database.
            ShoppingCartId = GetCartId();
            var cartItem = _db.ShoppingCartItems.SingleOrDefault(
            c => c.CartId == ShoppingCartId
            && c.ScreenId == id);
            if (cartItem == null)
            {
                // Create a new cart item if no cart item exists.
                cartItem = new CartItem
                {
                    ItemId = Guid.NewGuid().ToString(),
                    ScreenId = id,
                    CartId = ShoppingCartId,
                    Screen = _db.Screens.SingleOrDefault(
                p => p.ScreenID == id),
                    DateCreated = DateTime.Now
                };
                _db.ShoppingCartItems.Add(cartItem);
            }
            else
            {

            }
            try
            {
                _db.SaveChanges();
            }
            catch (System.Data.Entity.Infrastructure.DbUpdateException)
            {
                Console.WriteLine("fuck");
            }
        }
        public void Dispose()
        {
            if (_db != null)
            {
                _db.Dispose();
                _db = null;
            }
        }
        public string GetCartId()
        {
            return "defaultCart";
        }
        public List<CartItem> GetCartItems()
        {
            ShoppingCartId = GetCartId();
            
            return _db.ShoppingCartItems.Where(c => c.CartId == ShoppingCartId).ToList();
        }

        public decimal GetTotal()
        {
            ShoppingCartId = GetCartId();
            // Multiply product price by quantity of that product to get
            // the current price for each of those products in the cart.
            // Sum all product price totals to get the cart total.
            decimal? total = decimal.Zero;
            total = (decimal?)(from cartItems in _db.ShoppingCartItems
                               where cartItems.CartId == ShoppingCartId
                               select (int?) cartItems.Screen.UnitPrice).Sum();
            return total ?? decimal.Zero;
        }

        public void RemoveItem(string removeCartID, int removeScreenID)
        {
            using (var _db = new AppBackToReality.Models.ScreenContext())
            {
                try
                {
                    var myItem = (from c in _db.ShoppingCartItems
                                  where c.CartId == removeCartID && c.Screen.ScreenID == removeScreenID
                                  select c).FirstOrDefault();
                    if (myItem != null)
                    {
                        // Remove Item.
                        _db.ShoppingCartItems.Remove(myItem);
                        _db.SaveChanges();
                    }
                }
                catch (Exception exp)
                {
                    throw new Exception("ERROR: Unable to Remove Cart Item - " +
                   exp.Message.ToString(), exp);
                }
            }
        }

        public void RemoveAll()
        {
            _db.Database.ExecuteSqlCommand("DELETE FROM CartItems");
        }

        public int GetCount()
        {
            ShoppingCartId = GetCartId();
            // Get the count of each item in the cart and sum them up
            var count = (from cartItems in _db.ShoppingCartItems
                         where cartItems.CartId == ShoppingCartId
                         select cartItems);
            return count.Count();
            // Return 0 if all entries are null

        }


    }
}
