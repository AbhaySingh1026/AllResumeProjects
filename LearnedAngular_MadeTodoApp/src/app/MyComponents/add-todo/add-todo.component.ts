import { Component, Output, EventEmitter } from '@angular/core';
import { Todo } from 'src/app/Models/Todo';

@Component({
  selector: 'app-add-todo',
  templateUrl: './add-todo.component.html',
  styleUrls: ['./add-todo.component.css']
})
export class AddTodoComponent {
  title:string = "";
  desc:string = "";
  @Output() todoAdd: EventEmitter<Todo> = new EventEmitter();

  addTodo(){
    console.log("addTodo of add-todo component has been triggered");

    if (this.title === "") {
      alert("Title value cannot be empty");
    } 
    else {
      const todo: Todo = {
        sno: 0,
        title: this.title,
        desc: this.desc,
        active: false
      }
  
      this.todoAdd.emit(todo);
      this.title = "";
      this.desc = "";
    }
  }
}
