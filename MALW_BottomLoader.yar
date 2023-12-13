/*
This Yara ruleset is under the GNU-GPLv2 license (http://www.gnu.org/licenses/gpl-2.0.html) and open to any user or organization, as    long as you use it under this license.
*/
rule bottomLoaderStrings {   

    meta:
            author = "Vishal Thakur - malienist.medium.com"
            date = "2023-Dec-14"
            version = "1"
            description = "Detects BottomLoader Malware"
            info = "Generated from information extracted from the malware sample by manual analysis."
    strings:
            $str1 = { 73 72 63 5c 63 6f 72 65 5c 69 6e 74 65 72 6e 61 6c 5c 67 63 5c 70 72 6f 78 79 2e 64 }
            $str2 = { 41 20 63 79 63 6c 65 20 68 61 73 20 62 65 65 6e 20 64 65 74 65 63 74 65 64 20 69 6e 20 79 6f 75 72 20 70 72 6f 67 72 61 6d }
            $str3 = { 43 61 6e 6e 6f 74 20 72 65 6f 70 65 6e 20 66 69 6c 65 20 69 6e 20 6d 6f 64 65 }
            $str4 = { 73 65 70 61 72 61 74 6f 72 20 64 69 67 69 74 20 77 69 64 74 68 }
            $str5 = { 41 74 74 65 6d 70 74 69 6e 67 20 74 6f 20 77 72 69 74 65 20 74 6f 20 63 6c 6f 73 65 64 20 46 69 6c 65 }
            $str6 = { 64 72 75 6e 74 69 6d 65 5c 69 6d 70 6f 72 74 5c 63 6f 72 65 5c 69 6e 74 65 72 6e 61 6c 5c 73 74 72 69 6e 67 2e 64 }
            $str7 = { 73 74 64 5c 75 6e 69 5c 70 61 63 6b 61 67 65 2e 64 }
            $str8 = { 41 74 74 65 6d 70 74 69 6e 67 20 74 6f 20 72 65 6f 70 65 6e 28 29 20 61 6e 20 75 6e 6f 70 65 6e 65 64 20 66 69 6c 65 }
            $str9 = { 69 6e 74 65 72 6e 61 6c 20 65 72 72 6f 72 20 70 72 69 6e 74 69 6e 67 20 6d 6f 64 75 6c 65 20 63 79 63 6c 65 }
            
    condition:
        7 of them
}

rule bottomLoaderTimezone {

     meta:
            author = "Vishal Thakur - malienist.medium.com"
            date = "2023-Dec-14"
            version = "1"
            description = "Detects BottomLoader Malware"
            info = "Generated from information extracted from the malware sample by manual analysis."
    strings:
            $str1 = { 73 74 64 2e 64 61 74 65 74 69 6d 65 2e 74 69 6d 65 7a 6f 6e 65 2e 50 6f 73 69 78 54 69 6d 65 5a 6f 6e 65 2e 54 65 6d 70 54 72 61 6e 73 69 74 69 6f 6e }
            $str2 = { 73 74 64 2e 64 61 74 65 74 69 6d 65 2e 74 69 6d 65 7a 6f 6e 65 2e 50 6f 73 69 78 54 69 6d 65 5a 6f 6e 65 2e 54 72 61 6e 73 69 74 69 6f 6e 54 79 70 65 }
            $str3 = { 73 74 64 2e 64 61 74 65 74 69 6d 65 2e 74 69 6d 65 7a 6f 6e 65 2e 50 6f 73 69 78 54 69 6d 65 5a 6f 6e 65 2e 4c 65 61 70 53 65 63 6f 6e 64 }
            $str4 = { 73 74 64 2e 64 61 74 65 74 69 6d 65 2e 74 69 6d 65 7a 6f 6e 65 2e 50 6f 73 69 78 54 69 6d 65 5a 6f 6e 65 2e 54 65 6d 70 54 54 49 6e 66 6f }
            $str5 = { 73 74 64 2e 64 61 74 65 74 69 6d 65 2e 74 69 6d 65 7a 6f 6e 65 2e 50 6f 73 69 78 54 69 6d 65 5a 6f 6e 65 2e 54 72 61 6e 73 69 74 69 6f 6e }
            $str6 = { 73 74 64 2e 64 61 74 65 74 69 6d 65 2e 74 69 6d 65 7a 6f 6e 65 2e 50 6f 73 69 78 54 69 6d 65 5a 6f 6e 65 2e 54 54 49 6e 66 6f }
            
    condition:
        4 of them
}
