; Identifier

(identifier) @variable

; External functions

(extern_function
  name: (identifier) @function)

; Function calls

(function_call
  name: (identifier) @function)

; Function declaration

(function_definition
  name: (identifier) @function)

; Function parameters

(function_argument
  id: (identifier) @variable.parameter)

; Literals

(unsigned_integer) @constant.numeric.integer
(integer) @constant.numeric.integer

(char) @string
(string) @string

; Comments

(line_comment) @comment

; Keywords

[
  "Execute order"
  "Order executed"
  "Starfield"
  "Manifest"
  "CloseManifest"
  "CargoDock"
  "UnloadCargo"
  "CloseCargo"
] @keyword

[
  "Do, or do not. There is no try."
  "These aren't the droids you're looking for."
  "You have failed me for the last time."
] @keyword.control.conditional

[
  "Hypersignal"
  "Jamsignal"
] @keyword.control.import

[
  "Package"  
  "ClosePackage"
] @keyword.storage.type

[
  
  "A long time ago in a"
  "far, far away..."
  "May the force be with you."
] @keyword.function

; Puncts

; Operations

[
  "Tune"
  "CloseTune"
  "Boost"
  "CloseBoost"
  "Drain"
  "CloseDrain"
  "Amplify"
  "CloseAmplify"
  "Disperse"
  "CloseDisperse"
  "Salvage"
  "CloseSalvage"
] @operator

; Types

[
  "Holotext"
  "Credit"
  "Signal"
  "Target"
] @type.builtin

; Booleans

[
  "From a certain point of view."
  "That's impossible!"
] @constant.builtin.boolean
