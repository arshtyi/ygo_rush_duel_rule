#let title = "游戏王超速决斗规则"
#let subject = "ygo rush duel rule"
#let author = "arshtyi"
#let web = link("https://arshtyi.github.io/ygo_rush_duel_rule", "here")
#let date = datetime.today()
#let fonts = (
    "Noto Serif CJK SC",
    "Noto Sans CJK SC",
    "IBM Plex Mono",
)

#set document(title: title, author: author, date: date)
#set text(size: 11pt, font: fonts, lang: "zh", region: "cn")
#set page(paper: "a4")
#set par(justify: true, first-line-indent: (amount: 2em, all: true))
#set heading(numbering: "1.1.1.1")
#{
    set align(center)
    show link: set text(fill: blue.darken(20%))
    v(1fr)
    text(size: 15pt, title)
    parbreak()
    subject
    grid(
        columns: 3,
        inset: (x: 20pt, y: 15pt),
        [地址：#web], [作者：#author], [时间：#date.display("[year].[month].[day]")],
    )
    v(1fr)
    pagebreak(weak: true)
    counter(page).update(1)
}
#{
    v(10pt)
    align(center, text(size: 15pt)[前言])
    [
        本文档是游戏王超速决斗（rush duel, 以下简称 RD）的规则书。非官方规则书，也不适合纯新手。推荐有一定 OCG 环境基础的人阅读。

        若有谬误，欢迎指正。
    ]
    pagebreak(weak: true)
    counter(page).update(1)
}
#{
    set page(numbering: "I")
    set outline.entry(fill: repeat(gap: 0.15em, move(dy: -0.25em)[.]))
    outline()
    pagebreak(weak: true)
    counter(page).update(1)
}
#set page(footer: align(center, context counter(page).display("- 1 -")))
#set list(indent: 6pt, marker: sym.bullet.tri)

#let note(body) = block(
    width: 100%,
    inset: (x: 0.75em, y: 0.55em),
    fill: rgb("#e1e2e7"),
    stroke: (left: 4pt + rgb("#0c5fac"), rest: 0.6pt + rgb("#8d8edd")),
    radius: 4pt,
    {
        set par(first-line-indent: 0em)
        parbreak()
        body
    },
)
= 决斗事项
== 决斗开始
- 初始LP：$8000$点。
- 主卡组：$40 tilde.op 60$张。
- 额外卡组：$0 tilde.op 15$张。
- 初始手牌：$4$张。
== 决斗场地
- 怪兽区：$3$个。
- 魔法与陷阱区：$3$个。
- 场地区：$1$个。
- 额外卡组：$1$个。
- 墓地：$1$个。
- 卡组：$1$个。
#note[
    与 OCG 环境不同，RD 没有除外与除外区。
]
== 决斗流程
+ 抽卡阶段。
+ 主要阶段。
+ 战斗阶段（先攻的第$1$个回合没有战斗阶段）。
+ 结束阶段。

= 决斗进行
== 抽卡阶段
- 抽卡阶段进行「通常抽卡」。
    #note[先攻的第$1$个回合也能抽卡]
- 通常抽卡前手卡在$5$张以上的场合，通常抽卡是「必须抽$1$张」。
- 通常抽卡前收卡在$4$张以下的场合，通常抽卡是「必须抽到手卡变为$5$张」。
- 需要进行抽卡而卡组不足的场合，决斗败北。
== 主要阶段
- 每回合均可进行任意次数的通常召唤。
== 战斗阶段
- 与 OCG 环境基本一致。
== 结束阶段
- 手卡数量无上限。

= 卡片种类与记述
== 怪兽卡
- 卡名。
- 属性：光、地、水、炎、风、暗。
- 等级。
- ATK。
- DEF。
- 种族。
- 情报：通常记述了条件（召唤条件、使用条件等）与效果。
== 魔法卡
- 卡名。
- 图标：场地魔法、装备魔法、仪式魔法拥有特殊的图标，通常魔法没有。
- 情报：通常记述了使用条件与效果。
#note[
    与 OCG 环境不同，RD 没有速攻魔法，所有魔法卡都不能在对方回合发动。这也意味着 RD 所有魔法卡都可以在自己回合满足条件的情况下直接从手卡或场上发动。
]
== 陷阱卡
- 卡名。
- 情报：通常记述了使用条件与效果。

= 沿用 OCG 环境的部分
一些部分可沿用 OCG 规则的内容：
- 通常召唤的表示形式。
- 上级召唤的解放数量。
- 表示形式的变更。
- 反转（里侧表示变成表侧表示）。
- 战斗（攻击次数、攻击对象、直接攻击、反转、战斗伤害、战斗破坏等）。
- 通常魔法（发动、盖放等）。
- 场地魔法（发动、盖放、更换等）。
- 陷阱卡（发动、盖放、盖放回合不能发动等）。
    #note[发动次数与 OCG 有区别。]
- 卡组内同名卡数量上限为$3$张。
- 效果处理基本是处理到不能继续处理为止。
    #note[对于使用"。"分隔的两段效果文本且没有使用"那之后"或"再"，前一段不适用也不影响后一段效果。]
- 效果不能空发。
== 传说卡
- 部分卡带有#box(image("asset/fig/legend.png"))标志，表明是「レジェンドカード」（传说）卡。
- 同一种类传说卡（包括同名与不同名），合计最多在卡组内投入$1$张（也就是怪兽、魔法、陷阱各合计投入最多$1$张，合计最多投入$3$张）。

= 效果规则
== 怪兽效果发动次数
- 效果怪兽的「场上发动的效果」在那只效果怪兽自身表侧表示存在期间一回合仅能发动一次（也就是 OCG 的一回合一次，而非卡名一回合一次）。
== 陷阱卡的发动次数
- 同时有复数陷阱卡可以发动的场合，每次在同一次时机之内合计只有一张陷阱卡可以发动。
- *非回合玩家*先在此时机决定是否把陷阱卡发动。
- 非回合玩家在这次时机没有把陷阱卡发动的场合，回合玩家决定是否在这次时机把陷阱卡发动。
- 非回合玩家把陷阱卡发动的场合，由于同一次时机之内合计只有一张陷阱卡可以发动，回合玩家将不能再把陷阱卡发动。
== 条件和效果的处理时机
- 一张卡的【条件】与【效果】视为同时处理，不会分为「发动」「组成连锁」「效果处理」。
- 「条件与效果」处理中若满足陷阱卡发动条件，处理结束后陷阱卡不会错过时点。
    #note[效果发动就立刻处理，只要满足条件就不会错过时点，并没有 OCG 环境的「对象」「选」「时」「场合」的区分。]
== 其他与 OCG 不同的处理
- 从手卡里侧守备表示特殊召唤特定怪兽无需给对方确认（但需要遵守规则比如「业火之结界像」）。
- 确定被战斗破坏的怪兽的永续效果基本仍然适用。
- 使用「作为$2$只的数量解放」的怪兽效果解放，视为解放持有相同状态信息的$2$只怪兽。
- 「召唤/特殊召唤的回合」的情报在变成里侧表示后丢失。
