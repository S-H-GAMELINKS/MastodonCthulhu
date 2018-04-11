module MastodonCthulhu
    class Random < MastodonCthulhu::Convert
  
      def convert(input)
        input + "\n\n" + @replaces.sample
      end
    end
  end
