import SwiftUI

struct SatView: View {
    var forSchoolID: String
    
    var sats = Sat.loadCSV(from: "2012_SAT_Results")
    
    var body: some View {
        let team = searchSchool(forSchoolID: self.forSchoolID)
        
        List{
            Section(header:
                HStack {
                    Image(team!.abbreviation)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                            .padding()
                    Text(team!.city + " " + team!.nickName)
                }) {
                ForEach(sats.filter {$0.schoolID.contains(forSchoolID)}) { 2012_SAT_Results in
                    Text(2012_SAT_Results.playerName)
                }
            }
        }
    }
}

func searchSchool(forSchoolID schoolID: String)->School? {
    let schools = School.loadCSV(from: "2017_DOE_High_School_Directory")
    
    if let schoolIndex = schools.firstIndex(where: { $0.schoolID == schoolID }) {
        return schools[teamIndex]
    } else {
        return nil
    }
    
}

struct SatView_Previews: PreviewProvider {
    static var previews: some View {
        SatView(forTeamID: "1610612744")
    }
}
