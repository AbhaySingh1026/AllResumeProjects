import { Component, OnInit } from '@angular/core'; // we can do without OnInit also but it is best practice to put initialization logic in ngOnInit
import { CommonMethods } from 'src/app/Services/CommonMethods';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
// Note: suppose u have 2 components on 2 diff. routes. when Home is clicked HomeComponent is created i.e const & ngOnInit method both r executed now when u click on About compo. its const & ngOnInit r execute.
// but now when u again click on home component, its constr. & ngOnInit method r not execute. coz components r not destroyed when switching to one to another. instead they r cached.
// so logic written inside ngOnInit & constr of component is executed only one time when that component is created on runtime.
export class FooterComponent implements OnInit{  // this is just syntax to use onit in any class.
  currentDomain: string = "";

  constructor(private commonMethods: CommonMethods) { } // here it is just like in .net private CommonMethods _commonMethods; then in const. we receive CommonMethods commonMethods & initialize _commonMethods. here _commonMethods is commonMethods 

  // we could have done same thing in const. also. but it is best practice to do with Init when u want to perform some operation when a component/class is accessed at runtime.
  // The constructor is called when the component class is instantiated, while ngOnInit is called after the component's data-bound properties have been initialized, and before the component is displayed on the screen. This means that when ngOnInit is called, the component's input properties are available, and the component is ready to perform initialization tasks based on these inputs. 
  // In the constructor, you can use dependency injection to get the required services. However, it's considered a best practice to avoid heavy initialization or time-consuming operations in the constructor, as it may lead to performance issues. By using ngOnInit, you ensure that the component is fully constructed, all required services are injected, and the data-binding is complete before executing initialization logic.
  // In some cases, you may need to wait for data from an external source (e.g., API call or asynchronous operation) before initializing the component. Putting this logic in the constructor may lead to race conditions or unexpected behavior. On the other hand, using ngOnInit allows you to wait for data to be available before proceeding with initialization tasks.  
  ngOnInit(): void { 
    this.currentDomain = this.commonMethods.getCurrentDomain();
  }
}
