import 'package:flutter/material.dart';

import 'models/company.dart';
import 'constants.dart';
import 'company_tab.dart';
import 'description_tab.dart';

class JobDetail extends StatelessWidget {
  final Company? company;
  const JobDetail({Key? key, this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSilver,
      appBar: AppBar(
        backgroundColor: kSilver,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kBlack,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          company!.companyName!,
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          width: double.infinity,
          // margin: EdgeInsets.only(top: 50.0),
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints(maxHeight: 250.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(company!.image!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      company!.job!,
                      style: kTitleStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      company!.sallary!,
                      style: kSubtitleStyle,
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: company!.tag!
                          .map(
                            (e) => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5.0),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 5.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border:
                                    Border.all(color: kBlack.withOpacity(.5)),
                              ),
                              child: Text(
                                e,
                                style: kSubtitleStyle,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 25.0),
                    Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(
                          color: kBlack.withOpacity(.2),
                        ),
                      ),
                      // borderRadius: BorderRadius.circular(12.0),
                      child: TabBar(
                        unselectedLabelColor: kBlack,
                        indicator: BoxDecoration(
                          color: kOrange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        tabs: const [
                          Tab(text: "Description"),
                          Tab(text: "Company"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Expanded(
                child: TabBarView(
                  children: [
                    DescriptionTab(company: company),
                    CompanyTab(company: company),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          padding: const EdgeInsets.only(left: 18.0, bottom: 25.0, right: 18.0),
          // margin: EdgeInsets.only(bottom: 25.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(color: kBlack.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Icon(
                  Icons.bookmark_border,
                  color: kBlack,
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: kBlack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "Apply for Job",
                      style: kTitleStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
