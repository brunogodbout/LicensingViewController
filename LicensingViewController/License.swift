//
//  License.swift
//  LicensingViewController
//
//  Created by Tiago Henriques on 07/07/2015.
//

import Foundation

public enum License {
    case apache2(owner: String, years: String)
    case mit(owner: String, years: String)
    case bsd2Clause(owner: String, years: String)
    case custom(owner: String, years: String, clause: String)

    func notice() -> String {
        switch self {
        case .apache2(let owner, let years):
            return String(format: apache2Format, owner, years)
        case .mit(let owner, let years):
            return String(format: mitFormat, owner, years)
        case .bsd2Clause(let owner, let years):
            return String(format: bsd2ClauseFormat, owner, years)
        case .custom(let owner, let years, let clause):
            return String(format: customClauseFormat, owner, years, clause)
        }
    }
}


// MARK: Formats

private let apache2Format = "Copyright (c) %2$@ %1$@\r\n\r\nLicensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at\r\n\r\n\thttp://www.apache.org/licenses/LICENSE-2.0\r\n\r\nUnless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License."

private let mitFormat = "Copyright (c) %2$@ %1$@\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\r\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."

private let bsd2ClauseFormat = """
                        Copyright (c) %2$@ %1$@\r\n
                        All rights reserved\r\n
                        Redistribution and use of this software in source and binary forms,
                        with or without modification, are permitted provided that the following conditions are met:\r\n
                        * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\r\n
                        * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\r\n
                        THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
                        """

private let customClauseFormat = "Copyright (c) %2$@ %1$@\r\n\r\n%3$@"

