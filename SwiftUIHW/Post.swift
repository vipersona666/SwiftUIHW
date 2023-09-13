//
//  Post.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import Foundation
import SwiftUI

struct Post: Identifiable{
    let id: Int
    let type: String
    let subtype: String
    let description: String
    let image: Image
    
    static let posts = [
        Post(id: 1, type: "Дорожный", subtype: "Шоссейный", description: "Созданы для езды по асфальтированной дороге. Разумеется, все другие виды велосипедов тоже могут ехать по шоссе, но именно шоссейные велосипеды оптимизированы так, чтобы езда была максимально эффективной. На бездорожье такой байк будет работать плохо. У шоссейника особая геометрия рамы, небольшая ширина колёс, «лысые» покрышки, малый вес компонентов: всё разработано с учётом быстрого передвижения по асфальту. Для перевозки грузов такие велосипеды не спроектированы, то есть для долгих путешествий не подходят. Купить шоссейник и превратить его в горный, просто надев сверху широкие покрышки с протектором, не получится – покрышки просто не влезут.", image: Image("shossejny-velosiped")),
        Post(id: 2, type: "Дорожный", subtype: "Туристический", description: "Они похожи на шоссейные велосипеды, но специально адаптированы для перевозки багажа путешественника на большие расстояния, а не для скорости. Этот велосипед рассчитан на длинные расстояния, когда стабильность, практичность и комфорт ездока так же важны, как и производительность. Рама здесь шоссейная, но более широкие шины, есть пространство для установки брызговиков (крыльев) и багажника. Из туристического байка также получится хороший городской велосипед, благодаря его прочности и способности перевозить тяжёлые грузы.", image: Image("turisticheski-velosiped")),
        Post(id: 3, type: "Дорожный", subtype: "Разделочный", description: "Велосипеды для гонок на время или для триатлона – это шоссейные велосипеды со специальной конструкцией, которая улучшает их аэродинамические свойства. Руль имеет особую аэродинамическую конструкцию, которая позволяет гонщику наклоняться вперёд во время езды, чтобы минимизировать сопротивление воздуха. Такое положение приносит мало комфорта велосипедисту, но акцент тут делается на скорость, а не на комфорт. Эти велосипеды не разрешается использовать в гонках с масс-стартом в целях безопасности, потому что они имеют не лучшую управляемость и не подходят для длительных подъёмов или сложных спусков.", image: Image("razdelochny-velosiped")),
        Post(id: 4, type: "Горный", subtype: "Кросс-кантри", description: "Они предназначены для езды по всем тем местам, где нет асфальта, но в особенности для бездорожья: для горных, лесных, полевых троп. У маунтинбайков широкие шины с агрессивным протектором для лучшего сцепления с поверхностью, большой выбор передач, чтобы велосипедист мог заезжать в крутые подъёмы. Зачастую такие велосипеды имеют мягкую переднюю подвеску, но жёсткую сзади (это хардтейлы), а у некоторых есть передняя и задняя подвеска для смягчения прыжков и более мягкого хода (это двухподвесы). Велосипеды для скоростного спуска (даунхилл) – это специализированный тип горных велосипедов с очень прочной рамой, изменённой геометрией и подвеской с большим ходом. Они используются гонщиками только на спусках, и отправиться на таком в длинную поездку не получится.", image: Image("gorny-velosiped")),
        Post(id: 5, type: "Горный", subtype: "Фэтбайк", description: "Его можно узнать по сверхшироким колёсам – от 3,8 до почти 5 дюймов шириной. Это нужно для лучшей проходимости и сцепления, особенно на мягких почвах или утрамбованном снегу. Фэтбайк отлично подходит для зимнего катания и для поездок по рыхлым почвам. Он может быть похож на обычный горный велосипед, а может быть сконструирован для фитнес-целей.", image: Image("fatbike")),
        Post(id: 6, type: "Гибридный", subtype: "Гибрид", description: "Такие велосипеды представляют собой смесь шоссейных и горных видов. Они дают возможность с относительным комфортом кататься как по асфальту, так и вне дорог. Для серьёзных соревнований такой байк не подойдёт, однако он даёт возможность кататься везде. У гибридных велосипедов плоский руль вместо шоссейного руля-барана. У некоторых моделей есть передняя подвеска для смягчения неровностей дороги. Они разработаны с учётом универсальности и комфорта, поэтому имеют удобную геометрию рамы горных велосипедов, но с более гладкими и более узкими шинами для меньшего сопротивления качению на асфальте. На гибриде покрышки можно заменить на те, что с более агрессивным протектором, если вы хотите покататься по бездорожью, или на более гладкие, если едете по асфальту. Можно поставить и что-то среднее.", image: Image("gibrid-velosiped")),
        Post(id: 7, type: "Гибридный", subtype: "Круизер", description: "Этот тип велосипедов похож на гибридный: он предназначен для повседневной езды, у него очень удобная вертикальная посадка и широкое комфортное седло. Круизеры обычно имеют широкие покрышки и руль, направленный назад, а рама их такова, что женщины могут ездить в юбках и платьях. Большинство круизных байков односкоростные или трёхскоростные, и у них есть старомодный каботажный тормоз, где нужно направить педаль назад, чтобы остановиться. Круизер можно использовать для поездок на работу на короткие расстояния, если ваш маршрут довольно ровный, он идеально подходит для неспешной прогулки, часто бывает оснащён корзиной и подножкой. Расцветка круизеров часто не так строга, как у спортивных типов велосипедов, и может быть даже пёстрой.", image: Image("velosiped-kruizer")),
        Post(id: 8, type: "Гибридный", subtype: "Циклокросс", description: "Велосипед для велокросса может стать идеальным выбором, если вы ищете быстрый шоссейный велосипед, который справится с ездой по грязи и траве. У циклокросса шоссейный руль-баран вместо плоского руля, как у гибрида, у него достаточно пространства вокруг колёс, чтобы поставить покрышки шире шоссейных. По геометрии рамы циклокросс больше напоминает шоссейник, чем гибрид и маунтинбайк.", image: Image("cyclocross")),
        Post(id: 9, type: "Гибридный", subtype: "Городской", description: "Многие из велосипедов, перечисленных в этой статье, вполне способны ездить по городу. Однако есть определённый тип, который чаще всего называют городским. Этот байк имеет характеристики как гибридного, так и круизного велосипеда: обычно это вертикальная посадка круизера, но размер колёс такой же, как у гибридного. Городской велосипед может иметь брызговики (крылья), защиту цепи и защитный кожух на заднем колесе, что делает его более удобным для езды в обычной повседневной одежде.", image: Image("gorodskoy-velosiped")),
        Post(id: 10, type: "Складной", subtype: "Складной", description: "Они спроектированы так, чтобы складываться до компактных размеров. Такой велосипед удобно хранить, когда им не пользуются, его легче и дешевле перевозить. У складного велосипеда колёса обычно меньшего диаметра, что делает его менее эффективным для быстрого передвижения и менее управляемым на неровной поверхности.", image: Image("skladnoy-velosiped")),
        Post(id: 11, type: "Электричиский", subtype: "Электричиский", description: "У электровелосипеда есть аккумулятор и бесшумный мотор, который даёт мощность для продвижения вперёд. Этот байк тяжелее механических собратьев, но с ним вы можете ехать намного быстрее, не прилагая больших усилий. Когда вы начинаете крутить педали, мотор электровелосипеда включается и даёт толчок, как если бы дул сильный попутный ветер. Хотя в моторах стоит ограничитель скорости, и ехать по трассе так же быстро, как на автомобиле, не получится.", image: Image("elektrichesky-velosiped")),
        Post(id: 12, type: "Женский", subtype: "Женский", description: "Женские велосипеды разработаны для женщин с учётом их физиологических особенностей. Линейка размеров тут начинается с более малых рам, так что миниатюрным женщинам проще подобрать подходящий велосипед. А у тех велосипедов, которые по размеру пересекаются с обычными, будет более широкое и короткое седло, часто более узкий руль. Иногда у женских байков сквозная рама, которая изначально была разработана для велосипедисток в платьях или юбках.", image: Image("zhensky-velosiped")),
        Post(id: 13, type: "Детский", subtype: "Беговел", description: "Велосипед без педалей, на который ребёнок садится и едет, просто отталкиваясь ногами. На беговеле маленькому велосипедисту будет проще освоить баланс и рулевое управление. Беговелы стали очень популярны, ведь они лёгкие, доступные, простые в использовании, они помогут ребенку кататься быстрее и с меньшим количеством падений.", image: Image("begovel")),
        Post(id: 14, type: "Детский", subtype: "Горный", description: "У него широкий руль, прочные шины, несколько передач. Маунтинбайк для детей поставляется на рынок с широким диапазоном размеров колёс, поэтому подходит для всех возрастов и является наиболее универсальным типом. Модели для подростков могут обладать многими из тех же атрибутов, что и велосипеды для взрослых: гидравлические дисковые тормоза и даже полная подвеска.", image: Image("detski-gorni")),
        Post(id: 15, type: "Другие", subtype: "Трековый", description: "Трековый велосипед предназначен для езды на специальном велодроме (велотреке), который представляет собой овальную дорожку с наклоном. Там проходят трековые велогонки – отдельное направление в велоспорте. У таких велосипедов одна фиксированная передача, которая не даёт возможности двигаться накатом, поэтому если велосипед движется, ноги должны крутить педали. Передача используется как для приведения велосипеда в движение, так и для его замедления (за счёт противодавления), а тормозов в трековом велосипеде нет.", image: Image("trekovy-velosiped")),
        Post(id: 16, type: "Другой", subtype: "Фикс", description: "Фикс берёт своё начало от трекового гоночного велосипеда. У него одна передача, а руль может быть как плоским, так и откидным. Часто фиксы имеют яркие цвета и подобранные по цвету аксессуары.", image: Image("velosiped-fiks")),
        Post(id: 17, type: "Другой", subtype: "BMX", description: "У BMX 20-дюймовые колёса, но встречаются также 16-дюймовые и 24-дюймовые варианты. Сделанные из стали или алюминия, эти компактные на вид велосипеды не имеют амортизатора, у них только одна передача и тормоз, а также усиленный руль с подступёнком, который обеспечивает вертикальное положение райдера. Поскольку таким велосипедам приходится выдерживать повторяющиеся жёсткие приземления, они поставляются с усиленными рамами и прочными компонентами.", image: Image("bmx-velosiped")),
        Post(id: 18, type: "Другой", subtype: "Грузовой", description: "Грузовые велосипеды предназначены для перевозки больших грузов, включая продукты, детей, какой-либо негабарит. Из-за удлинённой формы и тяжёлой конструкции рамы эти велосипеды в первую очередь используются на ровных дорогах, а передача в основном служит тому, чтобы помочь перевезти груз, а не для поездки по холмистой местности. У грузового велосипеда впереди руля часто установлена либо большая корзина, либо площадка для её помещения. Некоторые модели имеют грузовые прицепы.", image: Image("gruzovoy-velosiped")),
        Post(id: 19, type: "Другой", subtype: "Тандем", description: "Велосипеды-тандемы спроектированы для двоих или более человек, поэтому они часто имеют усиленные рамы и компоненты, чтобы выдерживать дополнительный вес. Велосипеды-тандемы бывают разных стилей, включая дорожные, горные и круизные, но дорожные тандемы наиболее распространены. Тандемы популярны, потому что они позволяют велосипедистам с разными способностями работать вместе и наслаждаться поездкой. Они особенно подходят для катания с детьми и для людей с ограниченными возможностями. По количеству человек чаще можно встретить двухместные тандемы, хотя есть и те, что вмещают больше людей. Многоместные велосипеды часто предполагают посадку ездоков друг за другом, но существуют также двухместные тандемы с расположением людей бок о бок.", image: Image("velosiped-tandem")),
        Post(id: 20, type: "Другой", subtype: "Уницикл", description: "Уницикл, он же моноцикл, представляет собой одноколёсный велосипед. Такой вид велосипеда не предназначен для перемещения из одной точки на карте в другую. Он используется в фигурном катании на велосипеде, на нём выполняют акробатические трюки, играют в командные виды спорта, типа баскетбола, гандбола и даже хоккея. На сегодняшний день уже разработаны одноколёсные велосипеды, на которых можно ездить по пересечённой местности – так называемые муни. Есть даже редкие моноциклы для дистанционной езды. С колесом диаметром 29 или 36 дюймов на них можно легко достичь крейсерской скорости от 24 км/ч и более.", image: Image("unicycle"))]
}
