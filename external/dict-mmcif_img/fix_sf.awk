{ match($0, "save_[A-Z]+");
    if (RLENGTH > 0) {
	print tolower($0);
    }
    else {print $0}}
