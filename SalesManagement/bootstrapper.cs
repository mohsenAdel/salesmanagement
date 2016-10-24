using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Unity;
using Microsoft.Practices.Unity;
using System.Windows;
using SalesModule;
using SalesModule.Views;

namespace SalesManagement
{
    class bootstrapper:UnityBootstrapper
    {
        protected override DependencyObject CreateShell()
        {
            return Container.Resolve<Views.MainWindow>();
        }

        protected override void InitializeShell()
        {
            Application.Current.MainWindow.Show();
        }

        protected override void ConfigureContainer()
        {
            base.ConfigureContainer();

            //  Container.RegisterType(typeof(object), typeof(Views.Customers), "Customers");
            Container.RegisterType(typeof(object), typeof(CustomerList), "Customers");

            
            Container.RegisterType(typeof(object), typeof(ItemsList), "Items");
            Container.RegisterType(typeof(object), typeof(SalesTrans), "SalesTrans");



        }

        protected override void ConfigureModuleCatalog()
        {
            base.ConfigureModuleCatalog();
            Type modualeatype = typeof(ModuleInit);
            ModuleCatalog.AddModule(new Prism.Modularity.ModuleInfo()
            {
                ModuleName = modualeatype.Name,
                ModuleType = modualeatype.AssemblyQualifiedName,

                InitializationMode = Prism.Modularity.InitializationMode.WhenAvailable

            });
        }
    }
}
