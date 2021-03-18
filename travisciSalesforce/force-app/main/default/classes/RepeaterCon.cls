public with sharing class RepeaterCon {
        public List<String> collection {
            get {
                if (collection == null) {
                    collection = new List<String>();
                    for (Account a : [SELECT ID, Name FROM Account LIMIT 10]) {
                        collection.add(a.Name);
                    }
                }
                return collection;
            }
            private set;
        }
    }