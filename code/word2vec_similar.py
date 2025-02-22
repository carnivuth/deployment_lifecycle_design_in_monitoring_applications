>>> model.most_similar('vacation')
[('trip', 0.7234684228897095), ('honeymoon', 0.6447688341140747),
 ('beach', 0.6249285936355591), ('vacations', 0.5868890285491943),
 ('wedding', 0.5541957020759583), ('resort', 0.5231006145477295),
 ('traveling', 0.5194448232650757), ('vacation', 0.5068142414093018),
 ('vacationing', 0.5013546943664551)]
 
>>> model.doesnt_match("france england germany berlin".split())
'berlin'