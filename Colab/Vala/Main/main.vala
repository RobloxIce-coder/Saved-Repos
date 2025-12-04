public class ContohProgramVala {
   public static int main(string[] args) {
      print("\033[1mHalo Vala :D!\033[0m\n\n");
      print("\033[92m<!> Contoh program list buah-buahan: <!>\033[0m\n\n");
      var list = new List<string>();
      var prefix = "\033[93m";
      var suffix = "\033[0m";
      var i = 1;
      list.append(@"$prefix Apel $suffix");
      list.append(@"$prefix Mangga $suffix");
      list.append(@"$prefix Ceri $suffix");
      list.append(@"$prefix Jeruk $suffix");
      list.append(@"$prefix Anggur $suffix");
      list.foreach((entry) => {
          print("\033[94m>> \033[0m\033[1;95mEntry %02d\033[0m = %s\n", i++, entry);
      });
      print(@"\n\033[3;4;5;37mList buah-buahan memiliki $i elemen.$suffix\n");
      return 0;
   }
}
