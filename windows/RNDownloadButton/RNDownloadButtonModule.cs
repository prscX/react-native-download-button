using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Download.Button.RNDownloadButton
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNDownloadButtonModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNDownloadButtonModule"/>.
        /// </summary>
        internal RNDownloadButtonModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNDownloadButton";
            }
        }
    }
}
