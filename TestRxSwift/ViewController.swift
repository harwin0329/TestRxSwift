//
//  ViewController.swift
//  TestRxSwift
//
//  Created by Harwin on 2020/8/11.
//  Copyright © 2020 WoQi. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

/*
 负责发送事件(Event)
 Observeable

 负责订阅Observeable，监听Observeable发送的时间（Event）
 Observer

 */

enum MyError: Error {
    case MyError1
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

//        let v = UILabel(frame: CGRect(x: 0, y: 200, width: 100, height: 30))
//        view.addSubview(v)
//
////        let observable = Observable<Int>.create { observer in
////            observer.onNext(00)
////            observer.onNext(011)
////            observer.onError(MyError.MyError1)
////            observer.onNext(22)
////            observer.onCompleted()
////            observer.onNext(33)
////            return Disposables.create()
////        }
//
////        let observable = Observable.just(1)
////        let observable = Observable.of(1,2,3)
////        let observable = Observable.from([1, 2, 3])
////        let observable = Observable.just([1, 2, 3])
//
////        DispatchTimeInterval
//        let observable = Observable<Int>.timer(.seconds(3), period: .seconds(1), scheduler: MainScheduler.instance)
//
////        observable.subscribe { event in
////            switch event {
////            case let .next(element):
////                print("next", element)
////            case let .error(error):
////                print("error", error)
////            case .completed:
////                print("completed")
////            }
////        }
//
////        observable.map { "\($0)" }.bind(to: v.rx.text)
//
//        let disposed = observable.subscribe(onNext: { i in
//            print(i)
//        }, onError: { error in
//            print(error)
//        }, onCompleted: {
//            print("onCompleted")
//        }, onDisposed: {
//            print("onDisposed")
//        })
//
////        disposed.dispose()
////        take
//
//        let binder = Binder<String>(v) { v, value in
//            v.text = value
//        }
////        observable.subscribe(binder).
//
//        observable.take(1).subscribe(onNext: { i in
//            print("A+\(i)")
//        }, onError: { error in
//            print(error)
//        }, onCompleted: {
//            print("onCompleted")
//        }, onDisposed: {
//            print("onDisposed")
//        })
//
//        PublishSubject<String>.init()
//
//        let b = BehaviorSubject(value: 11)
//
//        let c = ReplaySubject<String>.create(bufferSize: 2)
////        c.subscribe(<#T##on: (Event<String>) -> Void##(Event<String>) -> Void#>)
        
        
        let d = Variable("11111")
        d.value = "2222"
        d.asObservable().subscribe { (event) in
            print("第一次",event)
        }
        d.value = "333"
        
        
        d.asObservable().subscribe { (event) in
            print("第二次",event)
        }
        d.value = "444"


    }
}
