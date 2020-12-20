СREATE
(mrzvis:Subject {name: 'MRZvIS', labs: 3, teacher: 'Ivashenko', difficulty: 10, type: 'exam'}),
(ppvis:Subject {name: 'PPvIS', labs: 2, teacher: 'Serdukov', difficulty: 8, type: 'exam'}),
(tvims:Subject {name: 'TViMS', labs: 0, teacher: 'Bajenova', difficulty: 2, type: 'exam'}),
(obipvit:Subject {name: 'OBiPvIT', labs: 0, teacher: 'Orlova', difficulty: 4, type: 'exam'}),
(os:Subject {name: 'OS', labs: 4, teacher: 'Rusin', difficulty: 6, type: 'exam'}),

(pbz:Subject {name: 'PBZ', labs: 3, teacher: 'Sinelnikov', difficulty: 4, type: 'zachet'}),
(simoib:Subject {name: 'SiMOIB', labs: 4, teacher: 'Zakharov', difficulty: 2, type: 'zachet'}),
(fizra:Subject {name: 'FIZRA', labs: 0, teacher: 'Yarmolik', difficulty: 0, type: 'zachet'}),

(ruslan:Student {name:'Ruslan',last_name:'Likhach',age:19,type:'Budjetnik'}),
(jenya:Student {name:'Evgeniy',last_name:'Sapejinsky',age:20,type:'Platnik'}),
(robert:Student {name:'Robert',last_name:'Novitsky',age:20,type:'Platnik'}),


(ruslan)-[:AVTOMAT]->(tvims), (ruslan)-[:AVTOMAT]->(fizra), (ruslan)-[:AVTOMAT]->(simoib), (ruslan)-[:AVTOMAT]->(os), (ruslan)-[:SDAL]->(obipvit),
(ruslan)-[:SDAL]->(pbz), (ruslan)-[:SDAL]->(mrzvis), (ruslan)-[:PERESDACHA]->(ppvis), (jenya)-[:SDAL]->(tvims), (jenya)-[:SDAL]->(fizra),
(jenya)-[:AVTOMAT]->(simoib), (jenya)-[:SDAL]->(os), (jenya)-[:PERESDACHA]->(obipvit), (jenya)-[:SDAL]->(pbz), (jenya)-[:SDAL]->(mrzvis),
(jenya)-[:PERESDACHA]->(ppvis), (robert)-[:SDAL]->(tvims), (robert)-[:SDAL]->(fizra), (robert)-[:AVTOMAT]->(simoib),
(robert)-[:SDAL]->(os), (robert)-[:SDAL]->(obipvit), (robert)-[:SDAL]->(pbz), (robert)-[:PERESDACHA]->(mrzvis), (robert)-[:PERESDACHA]->(ppvis)