import { Component } from '@angular/core';
import { CommonMethods } from '../../Services/CommonMethods';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent{
  searchKeyword: string = '';

  constructor(private commonMethods: CommonMethods) { }

  searchTodos() {
    console.log("searchTodos of header component has been triggered");
    this.commonMethods.setSearchKeyword(this.searchKeyword);
  }
}
