using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesModule.Business_Classes
{
   public class TransGrid : BindableBase
    {
        private int _TransHeadID;

        public int TransHeadID
        {
            get { return this._TransHeadID; }
            set
            {

                SetProperty(ref _TransHeadID, value);

            }
        }

        private int _ItemID;

        public int ItemID
        {
            get { return this._ItemID; }
            set
            {

                SetProperty(ref _ItemID, value);

            }
        }

        private string _ItemName;

        public string ItemName
        {
            get { return this._ItemName; }
            set
            {

                SetProperty(ref _ItemName, value);

            }
        }

        private decimal _ItemPrice;

        public decimal ItemPrice
        {
            get { return this._ItemPrice; }
            set
            {

                SetProperty(ref _ItemPrice, value);
                ItemTotalPrice = ItemCount * ItemPrice;
            }
        }


        private decimal _ItemCount;

        public decimal ItemCount
        {
            get { return this._ItemCount; }
            set
            {

                SetProperty(ref _ItemCount, value);
                ItemTotalPrice = ItemCount * ItemPrice;
            }
        }


        private decimal _ItemTotalPrice;

        public decimal ItemTotalPrice
        {
            get { return this._ItemTotalPrice; }
            set
            {

                SetProperty(ref _ItemTotalPrice, value);

            }
        }
    }
}
