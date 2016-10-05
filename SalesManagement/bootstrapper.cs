using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Unity;
using Microsoft.Practices.Unity;
using System.Windows;
using SalesModule;

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
          //  Container.RegisterType(typeof(object), typeof(cst), "cst");
            
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
