// Copyright (c) Andrew Arnott. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

using Microsoft.Build.Utilities;
using Task = Microsoft.Build.Utilities.Task;

namespace Nerdbank.Sdk;

public class FirstTask : Task
{
	public override bool Execute()
	{
		this.Log.LogMessage("Hello from FirstTask!");
		return true;
	}
}
