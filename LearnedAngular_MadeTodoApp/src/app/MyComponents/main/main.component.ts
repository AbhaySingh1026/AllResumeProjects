import { Component } from '@angular/core';
import { Todo } from 'src/app/Models/Todo';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent {
  todoToAdd:Todo = new Todo();

  addTodo(todo:Todo){
    console.log("addTodo of main component has been triggered");
    this.todoToAdd = todo;
  }
}
