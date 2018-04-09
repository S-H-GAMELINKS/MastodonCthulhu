module MastodonCthulhu
    class Random < MastodonCthulhu::Convert
  
      def convert(input)
        input + @replaces.sample
      end
    end
  end