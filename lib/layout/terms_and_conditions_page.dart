import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(title: 'Terms & Conditions'),
      body: SingleChildScrollView(
        padding: MSize.pSymmetric(h: 16, v: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MSectionTitle(
              showBorder: true,
              title: 'Definitions and key terms',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            Text(
              "To help explain things as clearly as possible in this Privacy Policy, every time any of these terms are referenced, are strictly defined as:",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Cookies: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "a small amount of data generated by a website and saved by your web browser. It is used to identify your browser, provide analytics, and remember information about you such as your language preference or login information.",
                )
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Company: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "When this policy mentions 'Company,' 'we,' 'us,' or 'our,' it refers to Inspired Inklings Limited, Lagos, Nigeria is responsible for your information under this Privacy Policy.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Country: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "Where Menō or the owners/founders of Menō are based, in this case, is Nigeria.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Customer: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "refers to the company, organization or person that signs up to use the Menō Service to manage the relationships with your consumers or service users.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Device: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "any internet-connected device such as a phone, tablet, computer or any other device that can be used to visit Menō and use the services.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'IP Address: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "Every device connected to the Internet is assigned a number known as an Internet protocol (IP) address. These numbers are usually assigned in geographic blocks. An IP address can often be used to identify the location from which a device is connecting to the Internet.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Personal: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "refers to those individuals who are employed by Menō or are under contract to perform a service on behalf of one of the parties.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Personal Data: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "any information that directly, indirectly, or in connection with other information - including a personal identification number - allows for the identification or identifiability of a natural person.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Service: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "refers to the service provided by Menō as described in the relative terms (if available) and on this platform.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'Third-party service: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "refers to advertisers, contest sponsors, promotional and marketing partners, and others who provide our content or whose products or services we think may interest you.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                  text: 'You: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "a person or entity that is registered with Menō to use the Services.",
                ),
              ]),
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
          ],
        ),
      ),
    );
  }
}
