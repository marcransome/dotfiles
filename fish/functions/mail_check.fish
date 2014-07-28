function mail_check
    set user (whoami)
    mail -e; and echo "You have mail"; or echo "No mail for $user"
end
