import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Todo } from 'src/app/Models/Todo';

@Component({
  selector: 'app-todo-item',
  templateUrl: './todo-item.component.html',
  styleUrls: ['./todo-item.component.css']
})
export class TodoItemComponent {
  @Input() todo: Todo = new Todo();  // when passing any var from parent component to child. it automatically binds that
  @Input() i: number = 0;
  @Output() todoDelete: EventEmitter<Todo> = new EventEmitter(); // when passing from child to parent in the name of event.
  @Output() todoCheckbox: EventEmitter<Todo> = new EventEmitter();
  
  deleteTodo(todo: Todo){
    console.log("deleteTodo of todo-item component has been triggered");
    this.todoDelete.emit(todo);
  }

  markAsDoneOrUndone(todo: Todo){
    console.log("markAsDoneOrUndone of todo-item component has been triggered");
    this.todoCheckbox.emit(todo);
  }
}
// and if you want to pass in b/w sibling component then use service of asobservble as i used in commonMethods service to pass from 
// header component to todos component. it just not works in sibling but all like child to parent & parent to child. and is also more
// cleaner & standard way. whereas input & ouput is good for if you want to pass at 1 level only either child to parent / parent to child.
// for multiple level standard service is good. although you can do that with input output also but then you 2 write so many lines and declare unnecessary 
// so many variables i.e by jugaad.

// in my example where i used service to pass. is whenever any user type in search bar it automatically updates that searchvar &
// automatically updates filteredTodos variable in todos component. coz it listens to change event due to subscribe keyword. 