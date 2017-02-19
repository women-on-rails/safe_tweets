messages = [
    {author: "Marc Hillman", 
        author_slug: "HillmanMarc",
        content: "Mon gros problème, c'est que la nuit m'atteint et le matin me nuit.",
        safe: true},
    {author: "Frédéric Dard",
        author_slug: "fredard",
        content: "Ce sont toujours les cons qui l'emportent. Question de surnombre !.",
        safe: true},
    {author: "San Antonio", 
        author_slug: "san_antonio",
        content: "Le seul mérite des bagnoles américaines, c’est qu’on peut transporter des cadavres dans leur coffre sans avoir à en replier les jambes.",
        safe: false},
    {author: "San Antonio",
        author_slug: "san_antonio",
        content: "L'échelle des valeurs est en train de perdre ses barreaux.",
        safe: false},
    {author: "Donald Trump",
        author_slug: "realDonaldTrump",
        content: "Robert I'm getting a lot of heat for saying you should dump Kristen- but I'm right. If you saw the Miss Universe girls you would reconsider.",
        safe: false}
]

messages.each {|msg| Message.create(author: msg[:author],
                                 author_slug: msg[:author_slug],
                                 content: msg[:content],
                                 safe: msg[:safe])}