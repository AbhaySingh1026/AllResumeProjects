import { Injectable }  from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';

@Injectable({      //here we told 2 angular that this class will be injected in other parts of app
    providedIn: 'root' // here we decided lifespan, like we do in .net singleton, scoped etc. here root means singleton.
})

export class CommonMethods{
    private searchKeywordSubject: BehaviorSubject<string> = new BehaviorSubject<string>('');
    public searchKeyword$: Observable<string> = this.searchKeywordSubject.asObservable();

    constructor() { }
    
    getCurrentDomain(): string{
        return window.location.origin;
    }

    setSearchKeyword(keyword: string) {
        this.searchKeywordSubject.next(keyword);
    }
}