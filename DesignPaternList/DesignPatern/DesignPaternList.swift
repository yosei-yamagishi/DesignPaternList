enum DesignPaternList {
    enum Section: CaseIterable {
        case creationalPatterns
        case structuralPatterns
        case behavioralPatterns
        
        var title: String {
            switch self {
            case .creationalPatterns:
                return "Creational patterns(生成に関するパターン)"
            case .structuralPatterns:
                return "Structural patterns(構造に関するパターン)"
            case .behavioralPatterns:
                return "Behavioral Patterns(振る舞いに関するパターン)"
            }
        }
        
        var items: [Item] {
            switch self {
            case .creationalPatterns:
                return [
                    .abstractFactory,
                    .builder,
                    .factoryMethod,
                    .prototype,
                    .singleton
                ]
            case .structuralPatterns:
                return [
                    .adapter,
                    .bridge,
                    .composite,
                    .decorator,
                    .facade,
                    .flyweight,
                    .proxy
                ]
            case .behavioralPatterns:
                return [
                    .chainOfResponsibility,
                    .command,
                    .interpreter,
                    .iterator,
                    .mediator,
                    .memento,
                    .observer,
                    .state,
                    .strategy,
                    .templateMethod,
                    .visitor
                ]
            }
        }
    }

    enum Item: String, CaseIterable {
        // Creational patterns
        case abstractFactory = "Abstract Factory"
        case builder = "Builder"
        case factoryMethod = "Factory Method"
        case prototype = "Prototype"
        case singleton = "Singleton"
        // Structural patterns
        case adapter = "Adapter"
        case bridge = "Bridge"
        case composite = "Composite"
        case decorator = "Decorator"
        case facade = "Facade"
        case flyweight = "Flyweight"
        case proxy = "Proxy"
        // Behavioral Patterns
        case chainOfResponsibility = "Chain Of Responsibility"
        case command = "Command"
        case interpreter = "Interpreter"
        case iterator = "Iterator"
        case mediator = "Mediator"
        case memento = "Memento"
        case observer = "Observer"
        case state = "State"
        case strategy = "Strategy"
        case templateMethod = "Template Method"
        case visitor = "Visitor"
        
        var title: String {
            self.rawValue
        }
        
        var discription: String {
            switch self {
            case .abstractFactory:
                return "関連する一連のインスタンスを状況に応じて、適切に生成する方法を提供する。"
            case .builder:
                return "複合化されたインスタンスの生成過程を隠蔽する。"
            case .factoryMethod:
                return "実際に生成されるインスタンスに依存しない、インスタンスの生成方法を提供する。"
            case .prototype:
                return "同様のインスタンスを生成するために、原型のインスタンスを複製する。"
            case .singleton:
                return "あるクラスについて、インスタンスが単一であることを保証する。"
            case .adapter:
                return "元々関連性のない2つのクラスを接続するクラスを作る。"
            case .bridge:
                return "クラスなどの実装と、呼び出し側の間の橋渡しをするクラスを用意し、実装を隠蔽する。"
            case .composite:
                return "再帰的な構造を表現する。"
            case .decorator:
                return "あるインスタンスに対し、動的に付加機能を追加する。Filterとも呼ばれる。"
            case .facade:
                return "複数のサブシステムの窓口となる共通のインタフェースを提供する。"
            case .flyweight:
                return "多数のインスタンスを共有し、インスタンスの構築のための負荷を減らす。"
            case .proxy:
                return "共通のインタフェースを持つインスタンスを内包し、利用者からのアクセスを代理する。Wrapperとも呼ばれる。"
            case .chainOfResponsibility:
                return "イベントの送受信を行う複数のオブジェクトを鎖状につなぎ、それらの間をイベントが渡されていくようにする。"
            case .command:
                return "複数の異なる操作について、それぞれに対応するオブジェクトを用意し、オブジェクトを切り替えることで、操作の切り替えを実現する。"
            case .interpreter:
                return "構文解析のために、文法規則を反映するクラス構造を作る。"
            case .iterator:
                return "複数の要素を内包するオブジェクトのすべての要素に対して、順番にアクセスする方法を提供する。反復子。"
            case .mediator:
                 return "オブジェクト間の相互作用を仲介するオブジェクトを定義し、オブジェクト間の結合度を低くする。"
            case .memento:
                return "データ構造に対する一連の操作のそれぞれを記録しておき、以前の状態の復帰または操作の再現が行えるようにする。"
            case .observer:
                return "インスタンスの変化を他のインスタンスから監視できるようにする。Listenerとも呼ばれる。"
            case .state:
                return "オブジェクトの状態を変化させることで、処理内容を変えられるようにする。   "
            case .strategy:
                return "データ構造に対して適用する一連のアルゴリズムをカプセル化し、アルゴリズムの切り替えを容易にする。"
            case .templateMethod:
                return "あるアルゴリズムの途中経過で必要な処理を抽象メソッドに委ね、その実装を変えることで処理内容を変えられるようにする。"
            case .visitor:
                return "データ構造を保持するクラスと、それに対して処理を行うクラスを分離する。"
            }
        }
    }
}
