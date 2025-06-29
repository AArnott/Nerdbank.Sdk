// Copyright (c) Andrew Arnott. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

using Nerdbank.Sdk;
using Xunit;

public class FirstTaskTests
{
	[Fact]
	public void Execute()
	{
		FirstTask task = new();
	}
}
