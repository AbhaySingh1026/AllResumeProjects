import { Component, Input } from '@angular/core';
import { CommonMethods } from 'src/app/Services/CommonMethods';
import { Todo } from 'src/app/Models/Todo';

@Component({
  selector: 'app-todos',
  templateUrl: './todos.component.html',
  styleUrls: ['./todos.component.css']
})
export class TodosComponent {
  localItem: string;
  todos: Todo[];
  filteredTodos: Todo[];
  private _todoToAdd: Todo = new Todo();

  @Input() set todoToAdd(value: Todo) {
    this._todoToAdd = value;
    if(this.hasDefaultValues() === false){
      this.addTodo(this._todoToAdd);
    }
  }
  get todoToAdd(): Todo {
    return this._todoToAdd;
  }

  constructor(private commonMethods: CommonMethods){
    this.localItem = localStorage.getItem("todos") ?? "";
    if (this.localItem === "") {
      this.todos = [];
    } 
    else {
      this.todos = JSON.parse(this.localItem);
    }
    this.filteredTodos = this.todos;
    this.commonMethods.searchKeyword$.subscribe(keyword => {
      this.filteredTodos = this.todos.filter(
        (todo) => todo.title.toLowerCase().includes(keyword.toLowerCase()) || todo.desc.toLowerCase().includes(keyword.toLowerCase())
      );
    });
  }

  deleteTodo(todo:Todo){
    console.log("deleteTodo of todos component has been triggered");
    const index = this.todos.indexOf(todo);
    this.todos.splice(index, 1);
    this.setFilteredTodosAccordingToKeyword();
    localStorage.setItem("todos", JSON.stringify(this.todos));
  }

  addTodo(todo:Todo){
    console.log("addTodo of todos component has been triggered");
    todo.sno = this.maxSnoIn(this.todos) + 1;
    this.todos.push(todo);
    this.setFilteredTodosAccordingToKeyword();
    localStorage.setItem("todos", JSON.stringify(this.todos));
  }

  toggleTodo(todo:Todo){
    console.log("toggleTodo of todos component has been triggered");
    const index = this.todos.indexOf(todo);
    this.todos[index].active = !this.todos[index].active;
    this.setFilteredTodosAccordingToKeyword()
    localStorage.setItem("todos", JSON.stringify(this.todos));
  }

  private hasDefaultValues(): boolean {
    return (
        this._todoToAdd.sno === 0 &&
        this._todoToAdd.title === "" &&
        this._todoToAdd.desc === "" &&
        this._todoToAdd.active === false
    );
  }

  private maxSnoIn(todos: Todo[]): number{
    let maxSno = 0;
    for (const todo of todos) {
      if (todo.sno > maxSno) {
        maxSno = todo.sno;
      }
    }
    return maxSno;
  }

  private setFilteredTodosAccordingToKeyword(): void{
    this.commonMethods.searchKeyword$.subscribe(keyword => {
      if (keyword === '' || keyword.trim() === '') {
        this.filteredTodos = this.todos;
      }
      else {
        this.filteredTodos = this.todos.filter(
          (todo) => todo.title.toLowerCase().includes(keyword.toLowerCase()) || todo.desc.toLowerCase().includes(keyword.toLowerCase())
        );
      }
    });
  }
}
