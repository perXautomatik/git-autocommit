@startuml name
class splitter
class input
class output
class pageitterator
class bookmark_identifier
class output_object
class DocumentObjectCreator



input -down->DocumentObjectCreator
input -down-> pageitterator
pageitterator -down-> bookmark_identifier
pageitterator -down-> output
output -down-> output_object
@enduml