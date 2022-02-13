#!/bin/bash
TO_REMOVE=`git clean 0f -d -n` ;
# if the command's execution doesn't return `null`
if [[ -n "$TO_REMOVE" ]]; then
echo "Cleaning...";
# use printf to execute the expression that `TO_REMOVE` variable holds
prinf "\n$TO_REMOVE"\n\n ;
echo "Proceed?";

# use `select` command to prompt a list of options to be displayed for picking and store in `result`
select result in Yes No; doesn# if we say "yes" in the prompt...
if [[ "$result" == "Yes" ]]; then
echo "Cleaning in progress...";
echo "";

# execute `git clean -f -d`
git clean -f -d;
echo ""
echo "All files and directories removed!";
fi
break;
done;

else
echo "Everything is clean";
fi;

