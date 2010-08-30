# encoding: utf-8
module Mongoid # :nodoc:
  module Relations #:nodoc:
    module Referenced #:nodoc:
      class ManyToMany
        class << self

          # Return the builder that is responsible for generating the documents
          # that will be used by this relation.
          #
          # Example:
          #
          # <tt>Referenced::ManyToMany.builder(meta, object)</tt>
          #
          # Options:
          #
          # meta: The metadata of the relation.
          # object: A document or attributes to build with.
          #
          # Returns:
          #
          # A newly instantiated builder object.
          def builder(meta, object)
            Builders::Referenced::ManyToMany.new(meta, object)
          end

          # Returns the macro for this relation. Used mostly as a helper in
          # reflection.
          #
          # Example:
          #
          # <tt>Mongoid::Relations::Referenced::ManyToMany.macro</tt>
          #
          # Returns:
          #
          # <tt>:references_and_referenced_in_many</tt>
          def macro
            :references_and_referenced_in_many
          end
        end
      end
    end
  end
end
