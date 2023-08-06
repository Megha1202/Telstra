bootcamp> db.movies.insert({title:"Fight Club", writer: "Chuck Palahniuk", year: "1999", actors:["Brad Pitt", "Edward Norton"]})
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("64c0f84556f60e159c3e2dd9") }
}
bootcamp> db.movies.insert({title:"Pulp Fiction", writer:"Quentin Tarantino", year:"2009", actors:["John Travolta", "Uma Thurman"]})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("64c0f86656f60e159c3e2dda") }
}
bootcamp> db.movies.insert({title:"Inglorious Basterds", writer:"Quentin Tarantino", year:"2009", actors:["Brad Pitt", "Diane Kruger", "Eli Roth"]})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("64c0f87f56f60e159c3e2ddb") }
}
bootcamp> db.movies.insert({title:"The Hobbit: An unexpected Journey", writer:"J.R.R. Tolkein", year:"2012",franchise:"The Hobbit"})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("64c0f89356f60e159c3e2ddc") }
}
bootcamp> db.movies.insert({title:"The Hobbit: The Desolation of Smaug", writer:"J.R.R Tolkien", year:"2013", franchise:"The Hobbit"})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("64c0f8ef56f60e159c3e2ddd") }
}
bootcamp> db.movies.insert({title:"The Hobbit: The Battle of the Five Armies", writer:"J.R.R Tolkien", year:"2002", franchise:"The Hobbit", synopsis:"Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness."})
{
 acknowledged: true,
  insertedIds: { '0': ObjectId("64c0f95d56f60e159c3e2ddf") }
}
bootcamp> db.movies.find()
[
  {
    _id: ObjectId("64c0f84556f60e159c3e2dd9"),
    title: 'Fight Club',
    writer: 'Chuck Palahniuk',
    year: '1999',
    actors: [ 'Brad Pitt', 'Edward Norton' ]
  },
  {
    _id: ObjectId("64c0f86656f60e159c3e2dda"),
    title: 'Pulp Fiction',
    writer: 'Quentin Tarantino',
    year: '2009',
    actors: [ 'John Travolta', 'Uma Thurman' ]
  },
  {
    _id: ObjectId("64c0f87f56f60e159c3e2ddb"),
    title: 'Inglorious Basterds',
    writer: 'Quentin Tarantino',
    year: '2009',
    actors: [ 'Brad Pitt', 'Diane Kruger', 'Eli Roth' ]
  },
  {
    _id: ObjectId("64c0f89356f60e159c3e2ddc"),
    title: 'The Hobbit: An unexpected Journey',
    writer: 'J.R.R. Tolkein',
    year: '2012',
    franchise: 'The Hobbit'
  },
 {
    _id: ObjectId("64c0f8ef56f60e159c3e2ddd"),
    title: 'The Hobbit: The Desolation of Smaug',
    writer: 'J.R.R Tolkien',
    year: '2013',
    franchise: 'The Hobbit'
  },
  {
    _id: ObjectId("64c0f93d56f60e159c3e2dde"),
    title: 'The Hobbit: The Battle of the Five Armies',
    writer: 'J.R.R Tolkien',
    year: '2002',
    franchise: 'The Hobbit',
    synopsis: 'Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.'
  },
  {
    _id: ObjectId("64c0f95d56f60e159c3e2ddf"),
    title: "Pee Wee Herman's Big Adventures"
  }
]
bootcamp> db.movies.find({writer:"Quentin Tarantino"})
[
  {
    _id: ObjectId("64c0f86656f60e159c3e2dda"),
    title: 'Pulp Fiction',
    writer: 'Quentin Tarantino',
    year: '2009',
    actors: [ 'John Travolta', 'Uma Thurman' ]
  },
  {
    _id: ObjectId("64c0f87f56f60e159c3e2ddb"),
    title: 'Inglorious Basterds',
    writer: 'Quentin Tarantino',
    year: '2009',
    actors: [ 'Brad Pitt', 'Diane Kruger', 'Eli Roth' ]
}
]
bootcamp> db.movies.find({actors:"Brad Pitt"})
[
  {
    _id: ObjectId("64c0f84556f60e159c3e2dd9"),
    title: 'Fight Club',
    writer: 'Chuck Palahniuk',
    year: '1999',
    actors: [ 'Brad Pitt', 'Edward Norton' ]
  },
  {
    _id: ObjectId("64c0f87f56f60e159c3e2ddb"),
    title: 'Inglorious Basterds',
    writer: 'Quentin Tarantino',
    year: '2009',
    actors: [ 'Brad Pitt', 'Diane Kruger', 'Eli Roth' ]
  }
]
bootcamp> db.movies.find({franchise:"The Hobbit"})
[
  {
    _id: ObjectId("64c0f89356f60e159c3e2ddc"),
    title: 'The Hobbit: An unexpected Journey',
    writer: 'J.R.R. Tolkein',
    year: '2012',
    franchise: 'The Hobbit'
  },
  {
    _id: ObjectId("64c0f8ef56f60e159c3e2ddd"),
    title: 'The Hobbit: The Desolation of Smaug',
    writer: 'J.R.R Tolkien',
    year: '2013',
    franchise: 'The Hobbit'
  },
  {
    _id: ObjectId("64c0f93d56f60e159c3e2dde"),
    title: 'The Hobbit: The Battle of the Five Armies',
    writer: 'J.R.R Tolkien',
    year: '2002',
    franchise: 'The Hobbit',
 synopsis: 'Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.'
  }
]
bootcamp> db.movies.find({year:{$gt:"1990", $lt:"2000"}})
[
  {
    _id: ObjectId("64c0f84556f60e159c3e2dd9"),
    title: 'Fight Club',
    writer: 'Chuck Palahniuk',
    year: '1999',
    actors: [ 'Brad Pitt', 'Edward Norton' ]
  }
]
bootcamp> db.movies.find({$or:[{year:{$gt:"2010"}},{year: {$lt:"2000"}}]})
[
  {
    _id: ObjectId("64c0f84556f60e159c3e2dd9"),
    title: 'Fight Club',
    writer: 'Chuck Palahniuk',
    year: '1999',
    actors: [ 'Brad Pitt', 'Edward Norton' ]
  },
  {
    _id: ObjectId("64c0f89356f60e159c3e2ddc"),
    title: 'The Hobbit: An unexpected Journey',
    writer: 'J.R.R. Tolkein',
    year: '2012',
    franchise: 'The Hobbit'
  },
  {
    _id: ObjectId("64c0f8ef56f60e159c3e2ddd"),
    title: 'The Hobbit: The Desolation of Smaug',
    writer: 'J.R.R Tolkien',
    year: '2013',
    franchise: 'The Hobbit'
  }
]
bootcamp> db.movies.update({_id:ObjectId("64c0f89356f60e159c3e2ddc")}, {$set:{synopsis:"A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug."}})
DeprecationWarning: Collection.update() is deprecated. Use updateOne, updateMany, or bulkWrite.
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
bootcamp> db.movies.update({_id:ObjectId("64c0f8ef56f60e159c3e2ddd")}, {$set:{synopsis:"The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring."}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
bootcamp> db.movies.update({_id:ObjectId("64c0f86656f60e159c3e2dda")}, {$push:{actors:"Samuel L. Jackson"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
bootcamp> db.movies.find()
[
  {
    _id: ObjectId("64c0f84556f60e159c3e2dd9"),
    title: 'Fight Club',
    writer: 'Chuck Palahniuk',
    year: '1999',
    actors: [ 'Brad Pitt', 'Edward Norton' ]
 },
  {
    _id: ObjectId("64c0f86656f60e159c3e2dda"),
    title: 'Pulp Fiction',
    writer: 'Quentin Tarantino',
    year: '2009',
    actors: [ 'John Travolta', 'Uma Thurman', 'Samuel L. Jackson' ]
  },
  {
    _id: ObjectId("64c0f87f56f60e159c3e2ddb"),
    title: 'Inglorious Basterds',
    writer: 'Quentin Tarantino',
    year: '2009',
    actors: [ 'Brad Pitt', 'Diane Kruger', 'Eli Roth' ]
  },
  {
    _id: ObjectId("64c0f89356f60e159c3e2ddc"),
    title: 'The Hobbit: An unexpected Journey',
    writer: 'J.R.R. Tolkein',
    year: '2012',
    franchise: 'The Hobbit',
    synopsis: 'A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.'
  },
  {
    _id: ObjectId("64c0f8ef56f60e159c3e2ddd"),
    title: 'The Hobbit: The Desolation of Smaug',
    writer: 'J.R.R Tolkien',
    year: '2013',
    franchise: 'The Hobbit',
    synopsis: 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.'
  },
  {
    _id: ObjectId("64c0f93d56f60e159c3e2dde"),
    title: 'The Hobbit: The Battle of the Five Armies',
    writer: 'J.R.R Tolkien',
    year: '2002',
    franchise: 'The Hobbit',
    synopsis: 'Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.'
  },
  {
    _id: ObjectId("64c0f95d56f60e159c3e2ddf"),
    title: "Pee Wee Herman's Big Adventures"
bootcamp> db.movies.find({synopsis:"Bilbo"})

bootcamp> db.movies.find({synopsis:{$regex:"Bilbo"}})
[
  {
    _id: ObjectId("64c0f89356f60e159c3e2ddc"),
    title: 'The Hobbit: An unexpected Journey',
    writer: 'J.R.R. Tolkein',
    year: '2012',
    franchise: 'The Hobbit',
    synopsis: 'A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.'
  },
  {
    _id: ObjectId("64c0f8ef56f60e159c3e2ddd"),
    title: 'The Hobbit: The Desolation of Smaug',
    writer: 'J.R.R Tolkien',
    year: '2013',
    franchise: 'The Hobbit',
    synopsis: 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.'
  },
  {
    _id: ObjectId("64c0f93d56f60e159c3e2dde"),
    title: 'The Hobbit: The Battle of the Five Armies',
    writer: 'J.R.R Tolkien',
    year: '2002',
    franchise: 'The Hobbit',
    synopsis: 'Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.'
  }
]
bootcamp> db.movies.find({$and:[{synopsis:{$regex:"Bilbo"}}, {synopsis:{$not:/Gandalf/}}]})
[
  {
    _id: ObjectId("64c0f89356f60e159c3e2ddc"),
    title: 'The Hobbit: An unexpected Journey',
    writer: 'J.R.R. Tolkein',
    year: '2012',
    franchise: 'The Hobbit',
    synopsis: 'A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.'
  },
  {
    _id: ObjectId("64c0f93d56f60e159c3e2dde"),
    title: 'The Hobbit: The Battle of the Five Armies',
    writer: 'J.R.R Tolkien',
 year: '2002',
    franchise: 'The Hobbit',
    synopsis: 'Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.'
  }
]