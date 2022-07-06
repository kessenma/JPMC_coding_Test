//
//  DataFactory.swift
//  NYCSchools
//
//  Created by Kyle Essenmacher on 7/3/22.
//

import Foundation

protocol CSVLoadable {
    init?(raw: [String])
}

///dbn,
///school_name,
///boro,
///overview_paragraph,
///school_10th_seats,
///academicopportunities1,
///academicopportunities2,
///academicopportunities3,
///academicopportunities4,
///academicopportunities5,
///ell_programs,
///language_classes,
///advancedplacement_courses,
///diplomaendorsements,
///neighborhood,
///shared_space,
///campus_name,
///building_code,
///location,
///phone_number,
///fax_number,
///school_email,
///website,
///subway,
///bus,
///grades2018,
///finalgrades,
///total_students,
///start_time,
///end_time,
///addtl_info1,
///extracurricular_activities,
///psal_sports_boys,
///psal_sports_girls,
///psal_sports_coed,
///school_sports,
///graduation_rate,
///attendance_rate,
///pct_stu_enough_variety,
///college_career_rate,
///pct_stu_safe,
///girls,
///boys,
///pbat,
///international,
///specialized,
///transfer,
///ptech,
///earlycollege,
///geoeligibility,
///school_accessibility_description,
///prgdesc1,
///prgdesc2,
///prgdesc3,
///prgdesc4,
///prgdesc5,
///prgdesc6,
///prgdesc7,
///prgdesc8,
///prgdesc9,
///prgdesc10,
///directions1,
///directions2,
///directions3,
///directions4,
///directions5,
///directions6,
///directions7,
///directions8,
///directions9,
///directions10,
///requirement1_1,
///requirement1_2,
///requirement1_3,
///requirement1_4,
///requirement1_5,
///requirement1_6,
///requirement1_7,
///requirement1_8,
///requirement1_9,
///requirement1_10,
///requirement2_1,
///requirement2_2,
///requirement2_3,
///requirement2_4,
///requirement2_5,
///requirement2_6,
///requirement2_7,
///requirement2_8,
///requirement2_9,
///requirement2_10,
///requirement3_1,
///requirement3_2,
///requirement3_3,
///requirement3_4,
///requirement3_5,
///requirement3_6,
///requirement3_7,
///requirement3_8,
///requirement3_9,
///requirement3_10,
///requirement4_1,
///requirement4_2,
///requirement4_3,
///requirement4_4,
///requirement4_5,
///requirement4_6,
///requirement4_7,
///requirement4_8,
///requirement4_9,
///requirement4_10,
///requirement5_1,
///requirement5_2,
///requirement5_3,
///requirement5_4,
///requirement5_5,
///requirement5_6,
///requirement5_7,
///requirement5_8,
///requirement5_9,
///requirement5_10,
///requirement6_1,
///requirement6_2,
///requirement6_3,
///requirement6_4,
///requirement6_5,
///requirement6_6,
///requirement6_7,
///requirement6_8,
///requirement6_9,
///requirement6_10,
///requirement7_1,
///requirement7_2,
///requirement7_3,
///requirement7_4,
///requirement7_5,
///requirement7_6,
///requirement7_7,
///requirement7_8,
///requirement7_9,
///requirement7_10,
///requirement8_1,
///requirement8_2,
///requirement8_3,
///requirement8_4,
///requirement8_5,
///requirement8_6,
///requirement8_7,
///requirement8_8,
///requirement8_9,
///requirement8_10,
///requirement9_1,
///requirement9_2,
///requirement9_3,
///requirement9_4,
///requirement9_5,
///requirement9_6,
///requirement9_7,
///requirement9_8,
///requirement9_9,
///requirement9_10,
///requirement10_1,
///requirement10_2,
///requirement10_3,
///requirement10_4,
///requirement10_5,
///requirement10_6,
///requirement10_7,
///requirement10_8,
///requirement10_9,
///requirement10_10,
///requirement11_1,
///requirement11_2,
///requirement11_3,
///requirement11_4,
///requirement11_5,
///requirement11_6,
///requirement11_7,
///requirement11_8,
///requirement11_9,
///requirement11_10,
///requirement12_1,
///requirement12_2,
///requirement12_3,
///requirement12_4,
///requirement12_5,
///requirement12_6,
///requirement12_7,
///requirement12_8,
///requirement12_9,
///requirement12_10,
///offer_rate1,
///offer_rate2,
///offer_rate3,
///offer_rate4,
///offer_rate5,
///offer_rate6,
///offer_rate7,
///offer_rate8,
///offer_rate9,
///offer_rate10,
///program1,
///program2,
///program3,
///program4,
///program5,
///program6,
///program7,
///program8,
///program9,
///program10,
///code1,
///code2,
///code3,
///code4,
///code5,
///code6,
///code7,
///code8,
///code9,
///code10,
///interest1,
///interest2,
///interest3,
///interest4,
///interest5,
///interest6,
///interest7,
///interest8,
///interest9,
///interest10,
///method1,
///method2,
///method3,
///method4,
///method5,
///method6,
///method7,
///method8,
///method9,
///method10,
///seats9ge1,
///seats9ge2,
///seats9ge3,
///seats9ge4,
///seats9ge5,
///seats9ge6,
///seats9ge7,
///seats9ge8,
///seats9ge9,
///seats9ge10,
///grade9gefilledflag1,
///grade9gefilledflag2,
///grade9gefilledflag3,
///grade9gefilledflag4,
///grade9gefilledflag5,
///grade9gefilledflag6,
///grade9gefilledflag7,
///grade9gefilledflag8,
///grade9gefilledflag9,
///grade9gefilledflag10,
///grade9geapplicants1,
///grade9geapplicants2,
///grade9geapplicants3,
///grade9geapplicants4,
///grade9geapplicants5,
///grade9geapplicants6,
///grade9geapplicants7,
///grade9geapplicants8,
///grade9geapplicants9,
///grade9geapplicants10,
///seats9swd1,
///seats9swd2,
///seats9swd3,
///seats9swd4,
///seats9swd5,
///seats9swd6,
///seats9swd7,
///seats9swd8,
///seats9swd9,
///seats9swd10,
///grade9swdfilledflag1,
///grade9swdfilledflag2,
///grade9swdfilledflag3,
///grade9swdfilledflag4,
///grade9swdfilledflag5,
///grade9swdfilledflag6,
///grade9swdfilledflag7,
///grade9swdfilledflag8,
///grade9swdfilledflag9,
///grade9swdfilledflag10,
///grade9swdapplicants1,
///grade9swdapplicants2,
///grade9swdapplicants3,
///grade9swdapplicants4,
///grade9swdapplicants5,
///grade9swdapplicants6,
///grade9swdapplicants7,
///grade9swdapplicants8,
///grade9swdapplicants9,
///grade9swdapplicants10,
///seats1specialized,
///seats2specialized,
///seats3specialized,
///seats4specialized,
///seats5specialized,
///seats6specialized,
///applicants1specialized,
///applicants2specialized,
///applicants3specialized,
///applicants4specialized,
///applicants5specialized,
///applicants6specialized,
///appperseat1specialized,
///appperseat2specialized,
///appperseat3specialized,
///appperseat4specialized,
///appperseat5specialized,
///appperseat6specialized,
///seats101,
///seats102,
///seats103,
///seats104,
///seats105,
///seats106,
///seats107,
///seats108,
///seats109,
///seats1010,
///admissionspriority11,
///admissionspriority12,
///admissionspriority13,
///admissionspriority14,
///admissionspriority15,
///admissionspriority16,
///admissionspriority17,
///admissionspriority18,
///admissionspriority19,
///admissionspriority110,
///admissionspriority21,
///admissionspriority22,
///admissionspriority23,
///admissionspriority24,
///admissionspriority25,
///admissionspriority26,
///admissionspriority27,
///admissionspriority28,
///admissionspriority29,
///admissionspriority210,
///admissionspriority31,
///admissionspriority32,
///admissionspriority33,
///admissionspriority34,
///admissionspriority35,
///admissionspriority36,
///admissionspriority37,
///admissionspriority38,
///admissionspriority39,
///admissionspriority310,
///admissionspriority41,
///admissionspriority42,
///admissionspriority43,
///admissionspriority44,
///admissionspriority45,
///admissionspriority46,
///admissionspriority47,
///admissionspriority48,
///admissionspriority49,
///admissionspriority410,
///admissionspriority51,
///admissionspriority52,
///admissionspriority53,
///admissionspriority54,
///admissionspriority55,
///admissionspriority56,
///admissionspriority57,
///admissionspriority58,
///admissionspriority59,
///admissionspriority510,
///admissionspriority61,
///admissionspriority62,
///admissionspriority63,
///admissionspriority64,
///admissionspriority65,
///admissionspriority66,
///admissionspriority67,
///admissionspriority68,
///admissionspriority69,
///admissionspriority610,
///admissionspriority71,
///admissionspriority72,
///admissionspriority73,
///admissionspriority74,
///admissionspriority75,
///admissionspriority76,
///admissionspriority77,
///admissionspriority78,
///admissionspriority79,
///admissionspriority710,
///eligibility1,
///eligibility2,
///eligibility3,
///eligibility4,
///eligibility5,
///eligibility6,
///eligibility7,
///eligibility8,
///eligibility9,
///eligibility10,
///auditioninformation1,
///auditioninformation2,
///auditioninformation3,
///auditioninformation4,
///auditioninformation5,
///auditioninformation6,
///auditioninformation7,
///auditioninformation8,
///auditioninformation9,
///auditioninformation10,
///common_audition1,
///common_audition2,
///common_audition3,
///common_audition4,
///common_audition5,
///common_audition6,
///common_audition7,
///common_audition8,
///common_audition9,
///common_audition10,
///grade9geapplicantsperseat1,
///grade9geapplicantsperseat2,
///grade9geapplicantsperseat3,
///grade9geapplicantsperseat4,
///grade9geapplicantsperseat5,
///grade9geapplicantsperseat6,
///grade9geapplicantsperseat7,
///grade9geapplicantsperseat8,
///grade9geapplicantsperseat9,
///grade9geapplicantsperseat10,
///grade9swdapplicantsperseat1,
///grade9swdapplicantsperseat2,
///grade9swdapplicantsperseat3,
///grade9swdapplicantsperseat4,
///grade9swdapplicantsperseat5,
///grade9swdapplicantsperseat6,
///grade9swdapplicantsperseat7,
///grade9swdapplicantsperseat8,
///grade9swdapplicantsperseat9,
///grade9swdapplicantsperseat10,
///primary_address_line_1,
///city,
///Postcode,
///state_code,
///Latitude,
///Longitude,
///Community_Board,
///Council_District,
///Census_Tract,
///BIN,
///BBL,
///NTA,
///Borough,

struct School: Identifiable, CSVLoadable{
    var dbn: String = ""
    var school_name: String = ""
    var boro: String = ""
    var overview_paragraph: String = ""
    var school_10th_seats: String = ""
    var academicopportunities1: String = ""
    var academicopportunities2: String = ""
    var academicopportunities3: String = ""
    var academicopportunities4: String = ""
    var academicopportunities5: String = ""
    var ell_programs: String = ""
    var language_classes: String = ""
    var advancedplacement_courses: String = ""
    var diplomaendorsements: String = ""
    var neighborhood: String = ""
    var shared_space: String = ""
    var campus_name: String = ""
    var building_code: String = ""
    var location: String = ""
    var phone_number: String = ""
    var fax_number: String = ""
    var school_email: String = ""
    var website: String = ""
    var subway: String = ""
    var bus: String = ""
    var grades2018: String = ""
    var finalgrades: String = ""
    var total_students: String = ""
    var start_time: String = ""
    var end_time: String = ""
    var addtl_info1: String = ""
    var extracurricular_activities: String = ""
    var psal_sports_boys: String = ""
    var psal_sports_girls: String = ""
    var psal_sports_coed: String = ""
    var school_sports: String = ""
    var graduation_rate: String = ""
    var attendance_rate: String = ""
    var pct_stu_enough_variety: String = ""
    var college_career_rate: String = ""
    var pct_stu_safe: String = ""
    var girls: String = ""
    var boys: String = ""
    var pbat: String = ""
    var international: String = ""
    var specialized: String = ""
    var transfer: String = ""
    var ptech: String = ""
    var earlycollege: String = ""
    var geoeligibility: String = ""
    var school_accessibility_description: String = ""
    var prgdesc1: String = ""
    var prgdesc2: String = ""
    var prgdesc3: String = ""
    var prgdesc4: String = ""
    var prgdesc5: String = ""
    var prgdesc6: String = ""
    var prgdesc7: String = ""
    var prgdesc8: String = ""
    var prgdesc9: String = ""
    var prgdesc10: String = ""
    var directions1: String = ""
    var directions2: String = ""
    var directions3: String = ""
    var directions4: String = ""
    var directions5: String = ""
    var directions6: String = ""
    var directions7: String = ""
    var directions8: String = ""
    var directions9: String = ""
    var directions10: String = ""
    var requirement1_1: String = ""
    var requirement1_2: String = ""
    var requirement1_3: String = ""
    var requirement1_4: String = ""
    var requirement1_5: String = ""
    var requirement1_6: String = ""
    var requirement1_7: String = ""
    var requirement1_8: String = ""
    var requirement1_9: String = ""
    var requirement1_10: String = ""
    var requirement2_1: String = ""
    var requirement2_2: String = ""
    var requirement2_3: String = ""
    var requirement2_4: String = ""
    var requirement2_5: String = ""
    var requirement2_6: String = ""
    var requirement2_7: String = ""
    var requirement2_8: String = ""
    var requirement2_9: String = ""
    var requirement2_10: String = ""
    var requirement3_1: String = ""
    var requirement3_2: String = ""
    var requirement3_3: String = ""
    var requirement3_4: String = ""
    var requirement3_5: String = ""
    var requirement3_6: String = ""
    var requirement3_7: String = ""
    var requirement3_8: String = ""
    var requirement3_9: String = ""
    var requirement3_10: String = ""
    var requirement4_1: String = ""
    var requirement4_2: String = ""
    var requirement4_3: String = ""
    var requirement4_4: String = ""
    var requirement4_5: String = ""
    var requirement4_6: String = ""
    var requirement4_7: String = ""
    var requirement4_8: String = ""
    var requirement4_9: String = ""
    var requirement4_10: String = ""
    var requirement5_1: String = ""
    var requirement5_2: String = ""
    var requirement5_3: String = ""
    var requirement5_4: String = ""
    var requirement5_5: String = ""
    var requirement5_6: String = ""
    var requirement5_7: String = ""
    var requirement5_8: String = ""
    var requirement5_9: String = ""
    var requirement5_10: String = ""
    var requirement6_1: String = ""
    var requirement6_2: String = ""
    var requirement6_3: String = ""
    var requirement6_4: String = ""
    var requirement6_5: String = ""
    var requirement6_6: String = ""
    var requirement6_7: String = ""
    var requirement6_8: String = ""
    var requirement6_9: String = ""
    var requirement6_10: String = ""
    var requirement7_1: String = ""
    var requirement7_2: String = ""
    var requirement7_3: String = ""
    var requirement7_4: String = ""
    var requirement7_5: String = ""
    var requirement7_6: String = ""
    var requirement7_7: String = ""
    var requirement7_8: String = ""
    var requirement7_9: String = ""
    var requirement7_10: String = ""
    var requirement8_1: String = ""
    var requirement8_2: String = ""
    var requirement8_3: String = ""
    var requirement8_4: String = ""
    var requirement8_5: String = ""
    var requirement8_6: String = ""
    var requirement8_7: String = ""
    var requirement8_8: String = ""
    var requirement8_9: String = ""
    var requirement8_10: String = ""
    var requirement9_1: String = ""
    var requirement9_2: String = ""
    var requirement9_3: String = ""
    var requirement9_4: String = ""
    var requirement9_5: String = ""
    var requirement9_6: String = ""
    var requirement9_7: String = ""
    var requirement9_8: String = ""
    var requirement9_9: String = ""
    var requirement9_10: String = ""
    var requirement10_1: String = ""
    var requirement10_2: String = ""
    var requirement10_3: String = ""
    var requirement10_4: String = ""
    var requirement10_5: String = ""
    var requirement10_6: String = ""
    var requirement10_7: String = ""
    var requirement10_8: String = ""
    var requirement10_9: String = ""
    var requirement10_10: String = ""
    var requirement11_1: String = ""
    var requirement11_2: String = ""
    var requirement11_3: String = ""
    var requirement11_4: String = ""
    var requirement11_5: String = ""
    var requirement11_6: String = ""
    var requirement11_7: String = ""
    var requirement11_8: String = ""
    var requirement11_9: String = ""
    var requirement11_10: String = ""
    var requirement12_1: String = ""
    var requirement12_2: String = ""
    var requirement12_3: String = ""
    var requirement12_4: String = ""
    var requirement12_5: String = ""
    var requirement12_6: String = ""
    var requirement12_7: String = ""
    var requirement12_8: String = ""
    var requirement12_9: String = ""
    var requirement12_10: String = ""
    var offer_rate1: String = ""
    var offer_rate2: String = ""
    var offer_rate3: String = ""
    var offer_rate4: String = ""
    var offer_rate5: String = ""
    var offer_rate6: String = ""
    var offer_rate7: String = ""
    var offer_rate8: String = ""
    var offer_rate9: String = ""
    var offer_rate10: String = ""
    var program1: String = ""
    var program2: String = ""
    var program3: String = ""
    var program4: String = ""
    var program5: String = ""
    var program6: String = ""
    var program7: String = ""
    var program8: String = ""
    var program9: String = ""
    var program10: String = ""
    var code1: String = ""
    var code2: String = ""
    var code3: String = ""
    var code4: String = ""
    var code5: String = ""
    var code6: String = ""
    var code7: String = ""
    var code8: String = ""
    var code9: String = ""
    var code10: String = ""
    var interest1: String = ""
    var interest2: String = ""
    var interest3: String = ""
    var interest4: String = ""
    var interest5: String = ""
    var interest6: String = ""
    var interest7: String = ""
    var interest8: String = ""
    var interest9: String = ""
    var interest10: String = ""
    var method1: String = ""
    var method2: String = ""
    var method3: String = ""
    var method4: String = ""
    var method5: String = ""
    var method6: String = ""
    var method7: String = ""
    var method8: String = ""
    var method9: String = ""
    var method10: String = ""
    var seats9ge1: String = ""
    var seats9ge2: String = ""
    var seats9ge3: String = ""
    var seats9ge4: String = ""
    var seats9ge5: String = ""
    var seats9ge6: String = ""
    var seats9ge7: String = ""
    var seats9ge8: String = ""
    var seats9ge9: String = ""
    var seats9ge10: String = ""
    var grade9gefilledflag1: String = ""
    var grade9gefilledflag2: String = ""
    var grade9gefilledflag3: String = ""
    var grade9gefilledflag4: String = ""
    var grade9gefilledflag5: String = ""
    var grade9gefilledflag6: String = ""
    var grade9gefilledflag7: String = ""
    var grade9gefilledflag8: String = ""
    var grade9gefilledflag9: String = ""
    var grade9gefilledflag10: String = ""
    var grade9geapplicants1: String = ""
    var grade9geapplicants2: String = ""
    var grade9geapplicants3: String = ""
    var grade9geapplicants4: String = ""
    var grade9geapplicants5: String = ""
    var grade9geapplicants6: String = ""
    var grade9geapplicants7: String = ""
    var grade9geapplicants8: String = ""
    var grade9geapplicants9: String = ""
    var grade9geapplicants10: String = ""
    var seats9swd1: String = ""
    var seats9swd2: String = ""
    var seats9swd3: String = ""
    var seats9swd4: String = ""
    var seats9swd5: String = ""
    var seats9swd6: String = ""
    var seats9swd7: String = ""
    var seats9swd8: String = ""
    var seats9swd9: String = ""
    var seats9swd10: String = ""
    var grade9swdfilledflag1: String = ""
    var grade9swdfilledflag2: String = ""
    var grade9swdfilledflag3: String = ""
    var grade9swdfilledflag4: String = ""
    var grade9swdfilledflag5: String = ""
    var grade9swdfilledflag6: String = ""
    var grade9swdfilledflag7: String = ""
    var grade9swdfilledflag8: String = ""
    var grade9swdfilledflag9: String = ""
    var grade9swdfilledflag10: String = ""
    var grade9swdapplicants1: String = ""
    var grade9swdapplicants2: String = ""
    var grade9swdapplicants3: String = ""
    var grade9swdapplicants4: String = ""
    var grade9swdapplicants5: String = ""
    var grade9swdapplicants6: String = ""
    var grade9swdapplicants7: String = ""
    var grade9swdapplicants8: String = ""
    var grade9swdapplicants9: String = ""
    var grade9swdapplicants10: String = ""
    var seats1specialized: String = ""
    var seats2specialized: String = ""
    var seats3specialized: String = ""
    var seats4specialized: String = ""
    var seats5specialized: String = ""
    var seats6specialized: String = ""
    var applicants1specialized: String = ""
    var applicants2specialized: String = ""
    var applicants3specialized: String = ""
    var applicants4specialized: String = ""
    var applicants5specialized: String = ""
    var applicants6specialized: String = ""
    var appperseat1specialized: String = ""
    var appperseat2specialized: String = ""
    var appperseat3specialized: String = ""
    var appperseat4specialized: String = ""
    var appperseat5specialized: String = ""
    var appperseat6specialized: String = ""
    var seats101: String = ""
    var seats102: String = ""
    var seats103: String = ""
    var seats104: String = ""
    var seats105: String = ""
    var seats106: String = ""
    var seats107: String = ""
    var seats108: String = ""
    var seats109: String = ""
    var seats1010: String = ""
    var admissionspriority11: String = ""
    var admissionspriority12: String = ""
    var admissionspriority13: String = ""
    var admissionspriority14: String = ""
    var admissionspriority15: String = ""
    var admissionspriority16: String = ""
    var admissionspriority17: String = ""
    var admissionspriority18: String = ""
    var admissionspriority19: String = ""
    var admissionspriority110: String = ""
    var admissionspriority21: String = ""
    var admissionspriority22: String = ""
    var admissionspriority23: String = ""
    var admissionspriority24: String = ""
    var admissionspriority25: String = ""
    var admissionspriority26: String = ""
    var admissionspriority27: String = ""
    var admissionspriority28: String = ""
    var admissionspriority29: String = ""
    var admissionspriority210: String = ""
    var admissionspriority31: String = ""
    var admissionspriority32: String = ""
    var admissionspriority33: String = ""
    var admissionspriority34: String = ""
    var admissionspriority35: String = ""
    var admissionspriority36: String = ""
    var admissionspriority37: String = ""
    var admissionspriority38: String = ""
    var admissionspriority39: String = ""
    var admissionspriority310: String = ""
    var admissionspriority41: String = ""
    var admissionspriority42: String = ""
    var admissionspriority43: String = ""
    var admissionspriority44: String = ""
    var admissionspriority45: String = ""
    var admissionspriority46: String = ""
    var admissionspriority47: String = ""
    var admissionspriority48: String = ""
    var admissionspriority49: String = ""
    var admissionspriority410: String = ""
    var admissionspriority51: String = ""
    var admissionspriority52: String = ""
    var admissionspriority53: String = ""
    var admissionspriority54: String = ""
    var admissionspriority55: String = ""
    var admissionspriority56: String = ""
    var admissionspriority57: String = ""
    var admissionspriority58: String = ""
    var admissionspriority59: String = ""
    var admissionspriority510: String = ""
    var admissionspriority61: String = ""
    var admissionspriority62: String = ""
    var admissionspriority63: String = ""
    var admissionspriority64: String = ""
    var admissionspriority65: String = ""
    var admissionspriority66: String = ""
    var admissionspriority67: String = ""
    var admissionspriority68: String = ""
    var admissionspriority69: String = ""
    var admissionspriority610: String = ""
    var admissionspriority71: String = ""
    var admissionspriority72: String = ""
    var admissionspriority73: String = ""
    var admissionspriority74: String = ""
    var admissionspriority75: String = ""
    var admissionspriority76: String = ""
    var admissionspriority77: String = ""
    var admissionspriority78: String = ""
    var admissionspriority79: String = ""
    var admissionspriority710: String = ""
    var eligibility1: String = ""
    var eligibility2: String = ""
    var eligibility3: String = ""
    var eligibility4: String = ""
    var eligibility5: String = ""
    var eligibility6: String = ""
    var eligibility7: String = ""
    var eligibility8: String = ""
    var eligibility9: String = ""
    var eligibility10: String = ""
    var auditioninformation1: String = ""
    var auditioninformation2: String = ""
    var auditioninformation3: String = ""
    var auditioninformation4: String = ""
    var auditioninformation5: String = ""
    var auditioninformation6: String = ""
    var auditioninformation7: String = ""
    var auditioninformation8: String = ""
    var auditioninformation9: String = ""
    var auditioninformation10: String = ""
    var common_audition1: String = ""
    var common_audition2: String = ""
    var common_audition3: String = ""
    var common_audition4: String = ""
    var common_audition5: String = ""
    var common_audition6: String = ""
    var common_audition7: String = ""
    var common_audition8: String = ""
    var common_audition9: String = ""
    var common_audition10: String = ""
    var grade9geapplicantsperseat1: String = ""
    var grade9geapplicantsperseat2: String = ""
    var grade9geapplicantsperseat3: String = ""
    var grade9geapplicantsperseat4: String = ""
    var grade9geapplicantsperseat5: String = ""
    var grade9geapplicantsperseat6: String = ""
    var grade9geapplicantsperseat7: String = ""
    var grade9geapplicantsperseat8: String = ""
    var grade9geapplicantsperseat9: String = ""
    var grade9geapplicantsperseat10: String = ""
    var grade9swdapplicantsperseat1: String = ""
    var grade9swdapplicantsperseat2: String = ""
    var grade9swdapplicantsperseat3: String = ""
    var grade9swdapplicantsperseat4: String = ""
    var grade9swdapplicantsperseat5: String = ""
    var grade9swdapplicantsperseat6: String = ""
    var grade9swdapplicantsperseat7: String = ""
    var grade9swdapplicantsperseat8: String = ""
    var grade9swdapplicantsperseat9: String = ""
    var grade9swdapplicantsperseat10: String = ""
    var primary_address_line_1: String = ""
    var city: String = ""
    var Postcode: String = ""
    var state_code: String = ""
    var Latitude: String = ""
    var Longitude: String = ""
    var Community_Board: String = ""
    var Council_District: String = ""
    var Census_Tract: String = ""
    var BIN: String = ""
    var BBL: String = ""
    var NTA: String = ""
    var Borough: String = ""
    var id = UUID()
    
    init(raw: [String]) {
        dbn = raw[0]
        school_name = raw[1]
        boro = raw[2]
        overview_paragraph = raw[3]
        neighborhood = raw[4]
        location = raw[5]
        website = raw[6]
        total_students = raw[7]
        primary_address_line_1 = raw[8]
    }
}

extension CSVLoadable {
    static func loadCSV(from csvName: String) -> [Self] {
        var csvToStruct = [Self]()
        
        //locate the csv file
        guard let filePath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
            return []
        }
        
        //convert the contents of the file into one very long string
        var data = ""
        do {
            data = try String(contentsOfFile: filePath)
        } catch {
            print(error)
            return []
        }
        
        //split the long string into an array of "rows" of data. Each row is a string
        //detect "/n" carriage return, then split
        var rows = data.components(separatedBy: "\n")
        
        //remove header rows
        //count the number of header columns before removing
        let columnCount = rows.first?.components(separatedBy: ",").count
        rows.removeFirst()

        //now loop around each row and split into columns
        for row in rows {
            let csvColumns = row.components(separatedBy: ",")
            if csvColumns.count == columnCount {
                let genericStruct = Self.init(raw: csvColumns)
                csvToStruct.append(genericStruct!)
            }
        }
        
        return csvToStruct
    }
}
