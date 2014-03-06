function jp -d "Open default editor with date prepended filename and specified title for jekyll posts."

  set title (date +"%Y-%m-%d")
  set front_matter "---\nlayout:\ntitle:\nimage:\n---\n"

  switch (count $argv) 
    case 0
      echo "No post title was specified."
      return 1
    case 1
      set lower_arg (echo $argv[1] | tr A-Z a-z)
      set title $title-$lower_arg.md
    case \*
      for arg in $argv
        set lower_arg (echo $arg | tr A-Z a-z)
        set title $title-$lower_arg
      end
      set title $title.md
  end

  echo -e $front_matter | EDITOR - +"file $title"
end
