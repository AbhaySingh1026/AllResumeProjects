import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'My Title';

  constructor(){
    // setTimeout(() => {
    //   this.title = "Changed Title";
    // }, 2000);
  }
}
