using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFRelations
{
    class Program
    {
        static void Main(string[] args)
        {
            var model = new SmallBusiness();

            var detailedOrders = model.Orders.Join(model.Persons, person => person.PersonID, order => order.PersonID,
                (order , person) => new { order, person });

            foreach (var detailedOrder in detailedOrders)
            {
                Console.WriteLine(
                    $" Order Number {detailedOrder.order.OrderNumber} made by {detailedOrder.person.FirstName} {detailedOrder.person.LastName}");
            }

            Console.Read();

        }
    }
}
