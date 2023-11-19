import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    var listCategories = ListCategories()
    
    var body: some View {
            NavigationView {
                List {
                    Section(header: Text("Health Categories")
                        .fontWeight(.bold)
                        .textCase(nil)
                        .font(.system(size: 25))
                        .offset(x: -20)
                    ) {
                        ForEach(listCategories.categories.filter {
                            searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText)
                        }) { category in
                            NavigationLink(destination: Text(category.name)) {
                                HStack {
                                    category.SystemName
                                        .font(.title)
                                        .imageScale(.large)
                                        .foregroundStyle(category.color)
                                        .frame(width: 19, height: 40)
                                        .padding(.horizontal)
                                    Text(category.name)
                                        .font(.headline)
                                        .foregroundStyle(.black)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Browse")
                .searchable(text: $searchText)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
