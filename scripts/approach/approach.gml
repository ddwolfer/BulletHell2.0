/// @description  Approach(start, end, shift);
/// @param start
/// @param  end
/// @param  shift
function approach(start_, end_, shift_){
	if (start_ < end_)
	    return min(start_ + shift_, end_); 
	else
	    return max(start_ - shift_, end_);
}




