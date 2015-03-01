#function: Reads dataframe (df), key (key), and a school building code (scode),
#returns: elements of the key ( school zip code, ditrict code, and school city) 

school_profile <- function(df,key,scode) {
  
  school_zip = key$school_zip[key$scode == df$scode & key$school_zip != 8675309,] #8675309 is placeholder
    
  school_city = key$school_city[key$scode == df$scode & key$school_city !="TBD",] #TBD is placeholder
    
  district_code = key$district_code[key$scode == df$scode & key$district_code !=8675309] #8675309 is placeholder
    
  return(school_zip,school_city,district_code)
}

