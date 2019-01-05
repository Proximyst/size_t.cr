# Defines the types `USize` and `ISize` meaning the unsigned type and signed
# type which is namely the architecture's bit specialisation.
#
# On 64-bit processors, this would mean 64-bit integers, while on 32-bit
# processors, they are 32-bit integers.
#
# The type definitions are done on compile-time and are processor dependent,
# meaning this might not be portable.
module Sizes
  VERSION = "0.1.0"

  {% if flag?(:x86_64) || flag?(:aarch64) || flag?(:mips64) || flag?(:mips64el) || flag?(:ppc64) || flag?(:nvptx64) || flag?(:spir64) %}
    # The famous `usize_t` type from C, defined in this case for a 64-bit
    # architecture.
    #
    # It is an alias to the type `UInt64` on 64-bit processors, and an alias to
    # the type `UInt32` on 32-bit processors.
    alias USize = UInt64

    # The famous `size_t` type from C, defined in this case for a 64-bit
    # architecture.
    #
    # It is an alias to the type `Int64` on 64-bit processors, and an alias to
    # the type `Int32` on 32-bit processors.
    alias ISize = Int64
  {% else %}
    # The famous `usize_t` type from C, defined in this case for a 32-bit
    # architecture.
    #
    # It is an alias to the type `UInt64` on 64-bit processors, and an alias to
    # the type `UInt32` on 32-bit processors.
    alias USize = UInt32

    # The famous `size_t` type from C, defined in this case for a 32-bit
    # architecture.
    #
    # It is an alias to the type `Int64` on 64-bit processors, and an alias to
    # the type `Int32` on 32-bit processors.
    alias ISize = Int32
  {% end %}
end
